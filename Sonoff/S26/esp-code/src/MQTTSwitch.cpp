#include "MQTTSWitch.h"
#include <ESP8266WiFi.h>
#include <WiFiManager.h>

MQTTSwitch::MQTTSwitch(){
  cb_onSwitchChanged = 0;
}

void MQTTSwitch::init(char *deviceName, int _relayPin, PubSubClient _client) {
  int len = strlen(deviceName);
  c_espClientName = (char*)malloc(len + 3);
  sprintf(c_espClientName, "%s_%02d", deviceName, _relayPin);

  relayPin = _relayPin;

  pinMode(relayPin, OUTPUT);
  digitalWrite(relayPin, LOW);

  initMQTTCommandTopic();
  initMQTTStateTopic();
  client = _client;
}

void MQTTSwitch::initMQTTStateTopic() {
  char buff[strlen(TEMPL_MQTT_SWITCH_STATE_TOPIC) + 30];
  sprintf(buff, TEMPL_MQTT_SWITCH_STATE_TOPIC, c_espClientName);
  MQTT_SWITCH_STATE_TOPIC = (char*)malloc(strlen(buff));
  strcpy(MQTT_SWITCH_STATE_TOPIC, buff);
}

void MQTTSwitch::initMQTTCommandTopic() {
  char buff2[strlen(TEMPL_MQTT_SWITCH_COMMAND_TOPIC) + 30];
  sprintf(buff2, TEMPL_MQTT_SWITCH_COMMAND_TOPIC, c_espClientName);
  MQTT_SWITCH_COMMAND_TOPIC = (char*)malloc(strlen(buff2));
  strcpy(MQTT_SWITCH_COMMAND_TOPIC, buff2);
}


void MQTTSwitch::switchHandler(MQTTSWICH_CALLBACK_SIGNATURE handler) {
  cb_onSwitchChanged = handler;
}

void MQTTSwitch::turnOn() {
  digitalWrite(relayPin, HIGH);
  Serial.printf("[%s] Turned on\n", c_espClientName);
  client.publish(MQTT_SWITCH_STATE_TOPIC, LIGHT_ON, true);
}
void MQTTSwitch::turnOff() {
  Serial.printf("[%s] Turned off\n", c_espClientName);
  digitalWrite(relayPin, LOW);
  client.publish(MQTT_SWITCH_STATE_TOPIC, LIGHT_OFF, true);
}

void MQTTSwitch::callback(char* topic, byte* payload, unsigned int length) {
  Serial.printf("[%s] Message arrived [%s]\n", c_espClientName, topic);

  char input[length + 1];
  for (unsigned int i = 0; i < length; i++) {
    input[i] = payload[i];
  }
  input[length] = 0;
  //Serial.println(input);

  if(strcmp(topic, MQTT_SWITCH_COMMAND_TOPIC) == 0) {
    if(strcasecmp(input, "ON") == 0) {
      turnOn();
    } else if(strcasecmp(input, "OFF") == 0) {
        turnOff();
    }
  }
}

void MQTTSwitch::triggerSwitch() {
  if(digitalRead(relayPin) == HIGH) {
    turnOff();
  } else {
    turnOn();
  }

}

void MQTTSwitch::sendMQTTInit() {
  char buffer[120];

  sprintf(buffer, "[%s] is listening on %s", c_espClientName, MQTT_SWITCH_COMMAND_TOPIC);
  client.publish(MQTT_SWITCH_INIT_TOPIC, buffer);

  sprintf(buffer, "[%s] is publishing to %s", c_espClientName, MQTT_SWITCH_STATE_TOPIC);
  client.publish(MQTT_SWITCH_INIT_TOPIC, buffer);
}

void MQTTSwitch::reconnect() {
   client.subscribe(MQTT_SWITCH_COMMAND_TOPIC);
   Serial.printf("[%s] Subscribed to: %s\n", c_espClientName, MQTT_SWITCH_COMMAND_TOPIC);
   Serial.printf("[%s] Publishing to: %s\n", c_espClientName, MQTT_SWITCH_STATE_TOPIC);

   sendMQTTInit();

   if(digitalRead(relayPin) == HIGH) {
     client.publish(MQTT_SWITCH_STATE_TOPIC, LIGHT_ON, true);
   } else {
     client.publish(MQTT_SWITCH_STATE_TOPIC, LIGHT_OFF, true);
   }
}
