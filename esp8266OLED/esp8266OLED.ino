#include <Wire.h>
#include "SH1106.h"

#define OUTPUT_PIN D6
#define BUTTON_FREQ_PIN D5

SH1106Wire display(0x3c, D1, D2);

// 주기 목록 (마이크로초 단위)
unsigned long frequencyList[] = {
  1000000,  // 1Hz
  500000,   // 2Hz
  200000,   // 5Hz
  100000,   // 10Hz
   50000,   // 20Hz
   40000,   // 25Hz
   20000    // 50Hz
};
int frequencyIndex = 0;

unsigned long lastPulseTime = 0;
bool lastFreqButtonState = HIGH;

void setup() {
  pinMode(OUTPUT_PIN, OUTPUT);
  digitalWrite(OUTPUT_PIN, LOW);

  pinMode(BUTTON_FREQ_PIN, INPUT_PULLUP);

  display.init();
  display.flipScreenVertically();
  display.setFont(ArialMT_Plain_16);
  display.setTextAlignment(TEXT_ALIGN_CENTER);

  updateDisplay();
}

void loop() {
  unsigned long now = micros();
  unsigned long pulseInterval = frequencyList[frequencyIndex];

  // 주기마다 펄스 (매우 짧은 HIGH-LOW 전환)
  if (now - lastPulseTime >= pulseInterval) {
    lastPulseTime = now;
    // 빠른 HIGH → LOW 펄스
    GPIO_REG_WRITE(GPIO_OUT_W1TS_ADDRESS, 1ul << OUTPUT_PIN);
    GPIO_REG_WRITE(GPIO_OUT_W1TC_ADDRESS, 1ul << OUTPUT_PIN);

  }

  // 주파수 변경 버튼 처리
  bool freqButtonState = digitalRead(BUTTON_FREQ_PIN);
  if (freqButtonState == LOW && lastFreqButtonState == HIGH) {
    frequencyIndex = (frequencyIndex + 1) % (sizeof(frequencyList) / sizeof(frequencyList[0]));
    updateDisplay();
    delay(200);  // 디바운스
  }
  lastFreqButtonState = freqButtonState;
}

void updateDisplay() {
  display.clear();
  unsigned long freqHz = 1000000UL / frequencyList[frequencyIndex];
  String text = "Freq: " + String(freqHz) + "Hz";
  display.drawString(64, 28, text);
  display.display();
}
