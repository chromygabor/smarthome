#include <Arduino.h>
#include <ESP8266WiFi.h>          //ESP8266 Core WiFi Library (you most likely already have this in your sketch)
#include <WiFiManager.h>

#include <Button.h>

#include <Ticker.h>
#include <PubSubClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266HTTPUpdateServer.h>

#include "MQTTSwitch.h"


const int RelayPin = 12;
const int GreenLed = 13;

#define def_mqtt_server       "192.168.1.148"
#define def_mqtt_port         "1883"
#define def_mqtt_user         "homeassistant"
#define def_mqtt_pass         "homeassistant"

#define TEMPL_DEVICE_NAME     "Sonoff_%d"

char * DEVICE_NAME;
char * MQTT_USER;
char * MQTT_PASS;

char * MQTT_SWITCH_STATE_TOPIC;
char * MQTT_SWITCH_COMMAND_TOPIC;
unsigned long pressed = 0;
unsigned int activePhase = 0;

ESP8266WebServer httpServer(80);
ESP8266HTTPUpdateServer httpUpdater;

WiFiManagerParameter custom_mqtt_server("server", "mqtt server", def_mqtt_server, 40);
WiFiManagerParameter custom_mqtt_port("port", "mqtt port", def_mqtt_port, 6);
WiFiManagerParameter custom_mqtt_user("user", "mqtt user", def_mqtt_user, 20);
WiFiManagerParameter custom_mqtt_pass("pass", "mqtt pass", def_mqtt_pass, 20);

Button button = Button(0, BUTTON_PULLUP_INTERNAL, true, 50);
Ticker ticker;
MQTTSwitch mqttSwitch = MQTTSwitch();

WiFiClient espClient;
PubSubClient client = PubSubClient(espClient);

void configModeCallback (WiFiManager *myWiFiManager);

void tick()
{
  int state = digitalRead(GreenLed);  // get the current state of GPIO1 pin
  digitalWrite(GreenLed, !state);     // set pin to the opposite state
}

void saveConfigCallback () {
  ticker.detach();
  Serial.println("Should save config");
}

void configModeCallback (WiFiManager *myWiFiManager) {
  Serial.printf("[%s] Entered config mode: ", DEVICE_NAME);
  Serial.print(WiFi.softAPIP());
  Serial.print(", ");
  Serial.println(myWiFiManager->getConfigPortalSSID());

  ticker.attach(0.2, tick);
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

  if (!wifiManager.autoConnect(DEVICE_NAME)) {
    Serial.println("failed to connect and hit timeout");
    //reset and try again, or maybe put it to deep sleep
    ESP.reset();
    delay(1000);
  }

}

void onPress(Button& b) {
  pressed = millis();
  activePhase = 1;
}

void onRelease(Button& b) {
  if(activePhase == 1) {
    //Serial.println("Switching");
    mqttSwitch.triggerSwitch();
    activePhase = 0;
  } else if(activePhase == 2) {
    WiFiManager wifiManager;

    Serial.print("Entering configuration");

    wifiManager.resetSettings();
    delay(1000);
    ESP.restart();
  } else if(activePhase == 3) {
    Serial.println("Entered into upload");

    httpUpdater.setup(&httpServer);
    httpServer.begin();
    activePhase = 4;

  }
}

void onHold(Button& b) {
}


void initDeviceName() {
  char buff[strlen(TEMPL_DEVICE_NAME) + 30];
  sprintf(buff, TEMPL_DEVICE_NAME, ESP.getChipId());
  DEVICE_NAME = (char*)malloc(strlen(buff));
  strcpy(DEVICE_NAME, buff);
}

void callback(char* topic, byte* payload, unsigned int length) {
  mqttSwitch.callback(topic, payload, length);
}

void setup() {
  Serial.begin(115200);
  delay(200);
  initDeviceName();
  Serial.printf("%s started\n", DEVICE_NAME);

  pinMode(GreenLed, OUTPUT); //debug to led 13
  ticker.attach(0.5, tick);
  initWifi();
  ticker.detach();

  Serial.printf("%s connected to: ", DEVICE_NAME);
  Serial.print(WiFi.SSID());
  Serial.print(", ip:");
  Serial.println(WiFi.localIP());


  // Assign callback functions
  button.pressHandler(onPress);
  button.releaseHandler(onRelease);
  button.holdHandler(onHold, 5000); // must be held for at least 1000 ms to trigger

  mqttSwitch.init(DEVICE_NAME,
    RelayPin,
    client);

  client.setServer(custom_mqtt_server.getValue(), atoi(custom_mqtt_port.getValue()));
  client.setCallback(callback);

}

void sendMQTTInit() {
  char buffer[100];
  char ip[20];
  String s = WiFi.localIP().toString();
  s.toCharArray(ip, sizeof(ip));

  sprintf(buffer, "[%s] is at %s", DEVICE_NAME, ip);
  client.publish(MQTT_SWITCH_INIT_TOPIC, buffer);
}


void reconnect() {
  while (!client.connected()) {
    Serial.printf("[%s] Attempting MQTT connection: %s, %s...", DEVICE_NAME, custom_mqtt_user.getValue(), custom_mqtt_pass.getValue());

    if (client.connect(DEVICE_NAME, custom_mqtt_user.getValue(), custom_mqtt_pass.getValue())) {
      //Call reconnect
      Serial.println("connected");

      sendMQTTInit();

      mqttSwitch.reconnect();
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
    }
  }
}

void loop() {
  button.process();

  if (!client.connected()) {
      ticker.attach(0.5, tick);
      reconnect();
      if(client.connected()) {
        ticker.detach();
        digitalWrite(GreenLed, LOW);
      }
  }
  client.loop();

  if(activePhase == 1 && (millis() - pressed) > 5000)  {
    ticker.attach(0.1, tick);
    activePhase = 2;
  } else if(activePhase == 2 && (millis() - pressed) > 8000)  {
    ticker.attach(0.05, tick);
    activePhase = 3;
  } else if(activePhase == 4) {
    httpServer.handleClient();
  }
}
