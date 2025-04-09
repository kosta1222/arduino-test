#include <Arduino.h>
#include <Wire.h>
#include <SoftwareSerial.h>
#include <Servo.h>

Servo servo_9;
Servo servo_8;

void _delay(float seconds) {
  long endTime = millis() + seconds * 1000;
  while(millis() < endTime) _loop();
}

void setup() {
  servo_9.attach(7);
  servo_8.attach(8);
  while(1) {
      servo_9.write(120);
      servo_9.write(90);
      _delay(1);
      servo_8.write(120);
      servo_8.write(90);

      _loop();
  }

}

void _loop() {
}

void loop() {
  _loop();
}