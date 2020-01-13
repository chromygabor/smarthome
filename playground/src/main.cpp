#include <Arduino.h>
#include <ESP8266WiFi.h>          //ESP8266 Core WiFi Library (you most likely already have this in your sketch)
#include <WiFiManager.h>

#include <Button.h>

#include <Ticker.h>

#define MQTT_KEEPALIVE 10

#include <PubSubClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266HTTPUpdateServer.h>
#include "MQTTSwitch.h"

const int LED = 13;
const int RelayPin = 12;

#define retryMqtt 10
#define retryInterval 2000
#define requestTicker 0.03
#define configTicker 0.2
#define uploadTicker 0.05
#define TEMPL_DEVICE_NAME     "Sonoff_%d"
#define TEMPL_DEVICE_NAME_NOMQTT "Test_nomqtt_%d"
#define def_mqtt_server       "10.3.141.1"
#define def_mqtt_port         "1883"
#define def_mqtt_user         "iot"
#define def_mqtt_pass         "iotpasswd"
#define MQTT_SWITCH_INIT_TOPIC   "chromy/device"

const long heartbeat = 2000;

char * DEVICE_NAME;

Ticker ticker;
WiFiClient espClient;
PubSubClient client = PubSubClient(espClient);

WiFiManagerParameter custom_mqtt_server("server", "mqtt server", def_mqtt_server, 40);
WiFiManagerParameter custom_mqtt_port("port", "mqtt port", def_mqtt_port, 6);
WiFiManagerParameter custom_mqtt_user("user", "mqtt user", def_mqtt_user, 40);
WiFiManagerParameter custom_mqtt_pass("pass", "mqtt pass", def_mqtt_pass, 40);

long lastHeartbeat = 0;

unsigned long pressed = 0;
unsigned int activePhase = 0;

Button button = Button(0, BUTTON_PULLUP_INTERNAL, true, 50);
MQTTSwitch mqttSwitch = MQTTSwitch();

ESP8266WebServer httpServer(80);
ESP8266HTTPUpdateServer httpUpdater;

void tick() {
  int state = digitalRead(LED);  // get the current state of GPIO1 pin
  digitalWrite(LED, !state);     // set pin to the opposite state
}


void configModeCallback (WiFiManager *myWiFiManager) {
  Serial.printf("[%s] Entered config mode: ", DEVICE_NAME);
  Serial.print(WiFi.softAPIP());
  Serial.print(", ");
  Serial.println(myWiFiManager->getConfigPortalSSID());

  ticker.attach(configTicker, tick);
}

void initDeviceName() {
  char buff[strlen(TEMPL_DEVICE_NAME) + 30];
  sprintf(buff, TEMPL_DEVICE_NAME, ESP.getChipId());
  DEVICE_NAME = (char*)malloc(strlen(buff));
  strcpy(DEVICE_NAME, buff);
}

void initWifi() {
  WiFiManager wifiManager;

  WiFi.hostname(DEVICE_NAME);

  //add all your parameters here
  wifiManager.addParameter(&custom_mqtt_server);
  wifiManager.addParameter(&custom_mqtt_port);
  wifiManager.addParameter(&custom_mqtt_user);
  wifiManager.addParameter(&custom_mqtt_pass);

  wifiManager.setAPCallback(configModeCallback);

  Serial.printf("[%s] Trying to connect...", DEVICE_NAME);

  if (!wifiManager.autoConnect(DEVICE_NAME)) {
    Serial.printf("[%s] Failed to connect...\n", DEVICE_NAME);
    //reset and try again, or maybe put it to deep sleep
    ESP.reset();
    delay(1000);
  } else {
    Serial.printf("[%s] Succeed to connect...\n", DEVICE_NAME);
  }

}

void mqttCallback(char* topic, byte* payload, unsigned int length) {
  mqttSwitch.callback(topic, payload, length);
  //Serial.printf("[%s] Received: %s\n", DEVICE_NAME, payload);
}

void enterIntoUpload() {
    Serial.printf("[%s] Entered into upload\n", DEVICE_NAME);

    httpUpdater.setup(&httpServer);
    httpServer.begin();
    activePhase = 4;
}

void enterIntoConfig() {
    WiFiManager wifiManager;

    WiFi.hostname(DEVICE_NAME);

    //add all your parameters here
    wifiManager.addParameter(&custom_mqtt_server);
    wifiManager.addParameter(&custom_mqtt_port);
    wifiManager.addParameter(&custom_mqtt_user);
    wifiManager.addParameter(&custom_mqtt_pass);

    wifiManager.setAPCallback(configModeCallback);
    
    Serial.printf("[%s] failed to connect to mqtt with status: %d\n", DEVICE_NAME, client.state());
    if (!wifiManager.startConfigPortal(DEVICE_NAME)) {
      Serial.printf("[%s] Failed to connect...\n", DEVICE_NAME);
      delay(3000);
      //reset and try again, or maybe put it to deep sleep
      ESP.reset();
      delay(5000);
    }

}

void onPress(Button& b) {
  pressed = millis();
  activePhase = 1;
}

void onRelease(Button& b) {
  if(activePhase == 1) {
    Serial.printf("[%s] Switching\n", DEVICE_NAME);
    mqttSwitch.triggerSwitch();
    activePhase = 0;
  } else if(activePhase == 2) {
     enterIntoConfig(); 
  } else if(activePhase == 3) {
    enterIntoUpload();
    activePhase = 4;

  }
}

void onHold(Button& b) {
}

void setup() {
  pinMode(LED, OUTPUT);  // initialize onboard LED as output

  Serial.begin(115200);
  delay(200);
  initDeviceName();
  Serial.printf("[%s] started\n", DEVICE_NAME);

  ticker.attach(requestTicker, tick);
  initWifi();
  
  client.setServer(custom_mqtt_server.getValue(), atoi(custom_mqtt_port.getValue()));
  client.setCallback(mqttCallback);

  button.pressHandler(onPress);
  button.releaseHandler(onRelease);
  button.holdHandler(onHold, 5000); // must be held for at least 1000 ms to trigger

  mqttSwitch.init(DEVICE_NAME,
    RelayPin,
    client);

}

void sendMQTTInit() {
  char buffer[120];
  char ip[20];
  String s = WiFi.localIP().toString();
  s.toCharArray(ip, sizeof(ip));

  sprintf(buffer, "[%s] is at %s", DEVICE_NAME, ip);
  Serial.printf("%s\n", buffer);
  client.publish(MQTT_SWITCH_INIT_TOPIC, buffer);

  sprintf(buffer, "[%s] is listening on %s", DEVICE_NAME, mqttSwitch.getMQTTSwitchCommandTopic());
  Serial.printf("%s\n", buffer);
  client.publish(MQTT_SWITCH_INIT_TOPIC, buffer);

  sprintf(buffer, "[%s] is publishing to %s", DEVICE_NAME, mqttSwitch.getMQTTSwitchCommandTopic());
  Serial.printf("%s\n", buffer);
  client.publish(MQTT_SWITCH_INIT_TOPIC, buffer);

}

void reconnect() {
  Serial.printf("[%s] Attempting MQTT connection to %s:%s,  %s / %s \n", DEVICE_NAME, custom_mqtt_server.getValue(), custom_mqtt_port.getValue(), custom_mqtt_user.getValue(), custom_mqtt_pass.getValue());
  client.connect(DEVICE_NAME, custom_mqtt_user.getValue(), custom_mqtt_pass.getValue());
  delay(retryInterval);

  if (client.connected()) {
    Serial.printf("[%s] connected to mqtt\n", DEVICE_NAME);
    mqttSwitch.reconnect();
    sendMQTTInit();
  } else {
    Serial.printf("[%s] Couldn't connect to mqtt\n", DEVICE_NAME);
  }
}

void loop() {
  long now = millis();
  button.process();
  client.loop();

  if (!client.connected() && (now - lastHeartbeat > heartbeat) && activePhase == 0) {
    ticker.attach(requestTicker, tick);
    Serial.printf("[%s] Not connected: %d\n", DEVICE_NAME, client.state());
    reconnect();
    ticker.detach();
    digitalWrite(LED, LOW);

    lastHeartbeat = now;
  } 
  else if((now - lastHeartbeat > heartbeat) && activePhase == 0) {
      //Serial.printf("[%s] sending heartbeat %d to topic: 'chromy/heartbeat'\n", DEVICE_NAME, now);
      // client.publish("chromy/heartbeat", DEVICE_NAME, strlen(DEVICE_NAME));

      lastHeartbeat = now;
  }

  if(activePhase == 1 && (millis() - pressed) > 5000)  {
    ticker.attach(configTicker, tick);
    activePhase = 2;
    Serial.printf("[%s] Activephase: %d\n", DEVICE_NAME, activePhase);
 } else if(activePhase == 2 && (millis() - pressed) > 8000)  {
    ticker.attach(uploadTicker, tick);
    activePhase = 3;
    Serial.printf("[%s] Activephase: %d\n", DEVICE_NAME, activePhase);
  } else if(activePhase == 4) {
    //Serial.printf("Activephase: %d\n", activePhase);
    httpServer.handleClient();
  }

}

