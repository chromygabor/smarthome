/*
Example for different sending methods
   https://github.com/sui77/rc-switch/
*/
#include <Arduino.h>
#include <RCSwitch.h>
#include <SimpleMap.h>

RCSwitch mySwitch = RCSwitch();

unsigned long nullValueStartTime = 0;
unsigned long nullValueLastTime = 0;
unsigned long nullValueCount = 0;

#define nullValueTreshold 40000
#define clickTreshold 1
#define pressTreshold 5
#define checkInterval 5000

const PROGMEM int ledPin =  4;// the number of the LED pin
const PROGMEM unsigned long codes[] = {16766276, 16766273};
const PROGMEM unsigned long upButton = 16766276;
const PROGMEM unsigned long downButton = 16766273;
const PROGMEM byte step = 5;

unsigned long now = 0;

byte direction = 0;
byte value = 0;
boolean turnedOn = false;
unsigned long lastCheck = 0;
byte realValue = 0;

struct KeyData
{
  unsigned long count;
  unsigned long firstReceived;
  unsigned long lastReceived;
};

// A map of strings
// Please not that it's necessary to provide a compare function, because it's needed to keep the map sorted!
SimpleMap<unsigned long, KeyData> *myMap = new SimpleMap<unsigned long, KeyData>([](unsigned long &a, unsigned long &b) -> int {
  if (a == b)
    return 0; // a and b are equal
  else if (a > b)
    return 1; // a is bigger than b
  else
    return -1; // a is smaller than b
});

void turnOn() {
  turnedOn = true;
  Serial.printf("Turned on to: %d, %d\n", value, realValue);
}

void turnOff() {
  turnedOn = false;
  Serial.printf("Turned off\n");
}

void startUp() {
  if(!turnedOn) turnOn();
  direction = 2;
  Serial.printf("Started up from: %d\n", value);
}

void startDown() {
  
  direction = 1;
  Serial.printf("Started down from: %d\n", value);
}

void stop() {
  direction = 0;
  Serial.printf("Stopped at: %d\n", value);

}


void pressed(unsigned long value) {
  if(value == upButton) {
    startUp();
  } else if(value == downButton) {
    startDown();
  }
}

void released(unsigned long value) {
  stop();
}

void clicked(unsigned long value) {
  if(value == upButton) {
    turnOn();
  } else if(value == downButton) {
    turnOff();
  }
  
}

boolean contains(unsigned long code) {
  boolean cont = false;
  unsigned int i = 0;
  unsigned int size = sizeof(codes) / sizeof(unsigned long);
  while (!cont && (i < size)) {
    if (codes[i] == code) {
      cont = true;
    }
    i++;
  }
  return cont;
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

  unsigned long receivedValue = 0;
  if (mySwitch.available()) {
    //Serial.printf("Received: %d\n", mySwitch.getReceivedValue());
    if (contains(mySwitch.getReceivedValue()))  {
      receivedValue = mySwitch.getReceivedValue();
      //Serial.printf("Contains: %d\n", receivedValue);
      if (myMap->has(receivedValue)) {
        KeyData data = myMap->get(receivedValue);
        data.count = data.count + 1;
        data.lastReceived = now;
        myMap->put(receivedValue, data);
      } else {
        KeyData data = {1, now, now};
        myMap->put(receivedValue, data);
      }
      nullValueCount = 1;
      nullValueStartTime = now;
      nullValueLastTime = 0;
    } else {
      Serial.printf("Received: %d\n", mySwitch.getReceivedValue());
    }
    mySwitch.resetAvailable();
  } else if (myMap->size() > 0) {
      nullValueCount = nullValueCount + 1;
      nullValueLastTime = now;
  }
 
    if (receivedValue != 0) {
      KeyData data = myMap->get(receivedValue);
      if (data.count == pressTreshold) {
        pressed(receivedValue);
        Serial.printf("Pressed code: %d, %d, %d, %d\n", receivedValue, data.count, data.firstReceived, data.lastReceived);
      }
    } else {
      if (nullValueCount > 1 && nullValueCount < 10) {
        //Serial.printf("Received null: %d, %d, %d\n", nullValueCount, nullValueStartTime, nullValueLastTime);
      }
      else if ((nullValueLastTime - nullValueStartTime) == nullValueTreshold) {
        nullValueCount = 0;
        nullValueStartTime = now;
        nullValueLastTime = 0;

        for (int i = 0; i < myMap->size(); i++) {
          KeyData data = myMap->getData(i);
          unsigned long code = myMap->getKey(i);
          if (data.count >= clickTreshold && data.count < pressTreshold)
          {
            Serial.printf("Clicked code: %d, %d, %d, %d\n", code, data.count, data.firstReceived, data.lastReceived);
            clicked(code);
          }
          else if (data.count >= pressTreshold) {
            Serial.printf("Released code: %d, %d, %d, %d\n", code, data.count, data.firstReceived, data.lastReceived);
            released(code);
          } else {
            Serial.printf("Nothing: %d, %d, %d, %d\n", code, data.count, data.firstReceived, data.lastReceived);
          }
        }

        //Serial.printf("Released\n");
        myMap->clear();
      }
    }

  if(now - lastCheck > checkInterval ) {
    lastCheck = now;

    if((direction == 1) && (value > 0)) {
      value = value - step;
    } else if((direction == 2) && (value < 255)) {
      value = value + step;
    } else if(direction != 0) {
      Serial.printf("Reached limit: %d\n", value);
      direction = 0;
    }
    if(turnedOn && (value != realValue)) {
      //Serial.printf("Value: %d, direction: %d\n", value, direction);
      realValue = value;
      analogWrite(ledPin, realValue);
    }  else if(!turnedOn && value == realValue) {
      Serial.printf("Value: %d, %d, %d\n", turnedOn, value, direction);
      realValue = 0;
      analogWrite(ledPin, realValue);
    }
  }

  //Serial.printf("Received %d, %d\n", receivedValue, now);
}