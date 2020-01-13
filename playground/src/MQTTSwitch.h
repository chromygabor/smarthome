#ifndef MQTTSwitch_h
#define MQTTSwitch_h

#include <PubSubClient.h>
#include <ESP8266WiFi.h>

typedef void (*MQTTSWICH_CALLBACK_SIGNATURE)(int);
#define TEMPL_MQTT_SWITCH_STATE_TOPIC     "chromy/%s/switch/status"
#define TEMPL_MQTT_SWITCH_COMMAND_TOPIC   "chromy/%s/switch/command"

#define LIGHT_ON "ON"
#define LIGHT_OFF "OFF"

class MQTTSwitch {
public:
  MQTTSwitch();
  void init(char *deviceName, int relayPin, PubSubClient client);

  void reconnect();

  void triggerSwitch();

  void callback(char* topic, byte* payload, unsigned int length);

  char * getMQTTSwitchCommandTopic();

  char * getMQTTSwitchStateTopic();

private:
  MQTTSWICH_CALLBACK_SIGNATURE cb_onSwitchChanged;
  char* MQTT_SWITCH_STATE_TOPIC;
  char* MQTT_SWITCH_COMMAND_TOPIC;

  void switchHandler(MQTTSWICH_CALLBACK_SIGNATURE handler);

  void sendMQTTInit();
  void initMQTTStateTopic();
  void initMQTTCommandTopic();
  void turnOn();
  void turnOff();
  PubSubClient client;

  char * c_espClientName;
  int relayPin;
};

#endif
