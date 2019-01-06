#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <PubSubClient.h>
#include <ESP.h>
#include "credentials.h"

int id = ESP.getFlashChipId();

//ledPin = 2 (blue led on board.
const PROGMEM int ledPin =  12;// the number of the LED pin
const PROGMEM char* MQTT_SERVER = "192.168.1.148";
const PROGMEM uint16_t MQTT_SERVER_PORT = 1883;
const PROGMEM char* MQTT_USER = "homeassistant";
const PROGMEM char* MQTT_PASSWORD = "homeassistant";


// MQTT: topics
// state
const PROGMEM char* MQTT_LIGHT_STATE_TOPIC = "chromy/esp/light/status";
const PROGMEM char* MQTT_LIGHT_COMMAND_TOPIC = "chromy/esp/light/switch";

// brightness
const PROGMEM char* MQTT_LIGHT_BRIGHTNESS_STATE_TOPIC = "chromy/esp/brightness/status";
const PROGMEM char* MQTT_LIGHT_BRIGHTNESS_COMMAND_TOPIC = "chromy/esp/brightness/set";

// payloads by default (on/off)
const PROGMEM char* LIGHT_ON = "ON";
const PROGMEM char* LIGHT_OFF = "OFF";

const uint8_t MSG_BUFFER_SIZE = 20;
char m_msg_buffer[MSG_BUFFER_SIZE];

WiFiClient espClient;
PubSubClient client(espClient);
int value = 100;
int switchValue = 1;

/**
  Setup wifi
*/
void setup_wifi() {

  delay(10);
  // We start by connecting to a WiFi network
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
  Serial.println("ChipId: ");
  Serial.println(id);
}

void turnOff() {
  if(switchValue == 0) return;

  analogWrite(ledPin, 0);
  switchValue = 0;

  client.publish(MQTT_LIGHT_STATE_TOPIC, LIGHT_OFF, true);

  snprintf(m_msg_buffer, MSG_BUFFER_SIZE, "%d", value);
  client.publish(MQTT_LIGHT_BRIGHTNESS_STATE_TOPIC, m_msg_buffer, true);

  Serial.print("turned off:");
  Serial.println(value);
}

void turnOn() {
  if(switchValue == 1) return;

  int realValue = (1024/100) * value;
  analogWrite(ledPin, realValue);
  switchValue = 1;

  client.publish(MQTT_LIGHT_STATE_TOPIC, LIGHT_ON, true);

  snprintf(m_msg_buffer, MSG_BUFFER_SIZE, "%d", value);
  client.publish(MQTT_LIGHT_BRIGHTNESS_STATE_TOPIC, m_msg_buffer, true);

  Serial.print("turned on:");
  Serial.println(value);
}

void turnTo(int param) {
  value = param;
  int realValue = (1024/100) * value;
  analogWrite(ledPin, realValue);
  if(switchValue == 0) {
    switchValue = 1;
    client.publish(MQTT_LIGHT_STATE_TOPIC, LIGHT_ON, true);
  }

  snprintf(m_msg_buffer, MSG_BUFFER_SIZE, "%d", value);
  client.publish(MQTT_LIGHT_BRIGHTNESS_STATE_TOPIC, m_msg_buffer, true);

  Serial.print("turned to:");
  Serial.println(value);
}

void callback(char* topic, byte* payload, unsigned int length) {
  Serial.print("Message arrived [");
  Serial.print(topic);
  Serial.print("] ");

  char input[length + 1];
  for (int i = 0; i < length; i++) {
    input[i] = payload[i];
  }
  input[length] = 0;
  Serial.println(input);

  if(strcmp(topic, MQTT_LIGHT_COMMAND_TOPIC) == 0) {
    Serial.println(MQTT_LIGHT_COMMAND_TOPIC);
    if(strcasecmp(input, "ON") == 0) {
      turnOn();
    } else if(strcasecmp(input, "OFF") == 0) {
        turnOff();
    }
  } else if(strcmp(topic, MQTT_LIGHT_BRIGHTNESS_COMMAND_TOPIC) == 0) {
    int param = atoi(input);
    turnTo(param);
  }
}


void setup() {
  // set the digital pin as output:
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);
  setup_wifi();
  client.setServer(MQTT_SERVER, MQTT_SERVER_PORT);
  client.setCallback(callback);
}

void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Create a random client ID
    String clientId = "ESP8266Client-";
    clientId += String(random(0xffff), HEX);
    // Attempt to connect
    if (client.connect(clientId.c_str(), MQTT_USER, MQTT_PASSWORD)) {
      Serial.println("connected");
      // Once connected, publish an announcement...
      //client.publish("outTopic", "hello world");
      // ... and resubscribe
      client.subscribe(MQTT_LIGHT_COMMAND_TOPIC);
      client.subscribe(MQTT_LIGHT_BRIGHTNESS_COMMAND_TOPIC);

      if(switchValue == 1) {
        client.publish(MQTT_LIGHT_STATE_TOPIC, LIGHT_ON, true);
      } else {
        client.publish(MQTT_LIGHT_STATE_TOPIC, LIGHT_OFF, true);
      }

      snprintf(m_msg_buffer, MSG_BUFFER_SIZE, "%d", value);
      client.publish(MQTT_LIGHT_BRIGHTNESS_STATE_TOPIC, m_msg_buffer, true);
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}

void loop() {
  // here is where you'd put code that needs to be running all the time.

  if (!client.connected()) {
      reconnect();
  }
  client.loop();
}
