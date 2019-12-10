/*
Example for different sending methods
   https://github.com/sui77/rc-switch/
*/
#include <Arduino.h>
#include <RCSwitch.h>

RCSwitch mySwitch = RCSwitch();

#define treshold 40
#define releaseTreshold 40

unsigned long lastReceivedValue = 0;
unsigned long lastReceivedFirstAt = 0;
unsigned long lastReceivedAt = 0;

unsigned long lastPressed = 0;
unsigned long lastPressedAt = 0;


void setup() {
  Serial.begin(9600);
  mySwitch.enableReceive(0);  // Receiver on interrupt 0 => that is pin #2
}

void pressed(unsigned long value, unsigned long now) {
  Serial.printf("Pressed@%d: %d\n", now, lastPressed);
}

void released(unsigned long value, unsigned long now) {
  Serial.printf("Released@%d: %d\n", now, lastPressed);
}

void loop() {
  unsigned long now = millis();
  if (mySwitch.available()) {
    unsigned long receivedValue = mySwitch.getReceivedValue();
    //Serial.printf("Received@%d: %d\n", now, receivedValue);
    if(lastReceivedValue != receivedValue) {
      lastReceivedFirstAt = now;
      lastReceivedValue = receivedValue;
      //Serial.printf("Received_diff@%d: %d\n", now, receivedValue);
    } else if(lastReceivedFirstAt + treshold < now && lastPressed != lastReceivedValue) {
      if(lastPressed != 0) {
        released(lastPressed, now);
      }
      lastPressed = lastReceivedValue;
      lastPressedAt = now;
      lastReceivedAt = now;
      pressed(lastReceivedValue, now);
    } else if(lastReceivedValue == receivedValue) {
      lastReceivedAt = now;
    } 
    // Serial.printf("Received@%d: ", millis());
    // Serial.print( mySwitch.getReceivedValue() );
    // Serial.print(" / ");
    // Serial.print( mySwitch.getReceivedBitlength() );
    // Serial.print("bit ");
    // Serial.print("Protocol: ");
    // Serial.println( mySwitch.getReceivedProtocol() );
    mySwitch.resetAvailable();
  }
  if(lastReceivedAt != 0 && lastReceivedAt + releaseTreshold < now) {
      //Serial.printf("Timeout on receive, so released\n");
      released(lastPressed, now);
      lastReceivedValue = 0;
      lastReceivedFirstAt = 0;
      lastReceivedAt = 0;
      lastPressed = 0;
      lastPressedAt = 0;
      
  }
  // if(lastReceivedValue != 0 && lastTriggered + treshold < now) {
  //   Serial.printf("Released@%d: %d\n", now, lastReceivedValue);
  //   lastReceivedFirstAt = 0;
  //   lastReceivedValue = 0;
  //   lastTriggered = 0;
  // }
}