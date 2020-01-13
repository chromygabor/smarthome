/*
Example for different sending methods
   https://github.com/sui77/rc-switch/
*/
#include <Arduino.h>
#include <RCSwitch.h>
#include <SimpleMap.h>

RCSwitch mySwitch = RCSwitch();

const PROGMEM int ledPin =  4;// the number of the LED pin
const PROGMEM byte step = 10;

unsigned long now = 0;

const PROGMEM unsigned long btnOn = 739076;
const PROGMEM unsigned long btnOff = 739078;
const PROGMEM unsigned long btn100 = 739079;
const PROGMEM unsigned long btn75 = 739080;
const PROGMEM unsigned long btn50 = 739082;
const PROGMEM unsigned long btn25 = 739083;
const PROGMEM unsigned long btnUp = 739081;
const PROGMEM unsigned long btnDown = 739084;

byte value = 0;
boolean turnedOn = false;
byte realValue = 0;

void checkValues() {
  if(turnedOn) {
    if(value != realValue) {
      Serial.printf("Setting to: %d, %d\n", value, realValue);
      analogWrite(ledPin, value);
      realValue = value;
    }
  } else {
    if(realValue != 0) {
      Serial.printf("Setting to: %d, %d\n", 0, realValue);
      analogWrite(ledPin, 0);
      realValue = 0;
    }
  }
}

void turnOn() {
  turnedOn = true;
  //Serial.printf("Turned on to: %d, %d\n", value, realValue);
  checkValues();
}

void turnOff() {
  turnedOn = false;
  //Serial.printf("Turned off\n");
  checkValues();
}

void up() {
  if(value  < 255) {
    if(value + step > 255) {
      value = 255;
    } else  value = value + step;
    turnOn();
  }
}

void down() {
  if(value > 0) {
    if(value - step < 0) {
      value = 0;
    } else value = value - step;
    turnOn();
  }
}


void setTo(byte level) {
  value = level;
  turnOn();
}


void setup() {
  Serial.begin(9600);
  pinMode(ledPin, OUTPUT);
  mySwitch.enableReceive(0); // Receiver on interrupt 0 => that is pin #2
  turnOff();
  value = 255;
}

void loop() {
  now = now + 1;

  if (mySwitch.available()) {
    //Serial.printf("Received: %d\n", mySwitch.getReceivedValue());
    switch (mySwitch.getReceivedValue()) {
    case btnOn:
      turnOn();
      break;
    case btnOff:
      turnOff();
      break;
    case btn25:
      setTo(64);
      break;
    case btn50:
      setTo(128);
      break;
    case btn75:
      setTo(191);
      break;
    case btn100:
      setTo(255);
      break;
    case btnUp:
      up();
      break;
    case btnDown:
      down();
      break;
    default:
      break;
    }
    mySwitch.resetAvailable();
  }

  //Serial.printf("Received %d, %d\n", receivedValue, now);
}