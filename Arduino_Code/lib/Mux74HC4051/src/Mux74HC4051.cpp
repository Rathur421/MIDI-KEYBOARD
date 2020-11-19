#include "Mux74HC4051.h"

Mux74HC4051::Mux74HC4051(){}

Mux74HC4051::Mux74HC4051(byte Z_pin, byte S0_pin, byte S1_pin, byte S2_pin, bool Write){
  m_Z_pin  = Z_pin;
  m_S0_pin = S0_pin;
  m_S1_pin = S1_pin;
  m_S2_pin = S2_pin;
  // m_Write = Write;
  pinMode(m_S0_pin, OUTPUT);
  pinMode(m_S1_pin, OUTPUT);
  pinMode(m_S2_pin, OUTPUT);
  if (not Write){
    pinMode(m_Z_pin, INPUT);
  }
}

// void Mux74HC4051::setChannel(byte channel){
//   if (channel<=3){
//     digitalWrite(m_S2_pin, LOW);
//   }
//   else{
//     digitalWrite(m_S2_pin, HIGH);
//   }
//   if (channel==0 || channel==1 || channel==4 || channel==5){
//     digitalWrite(m_S1_pin, LOW);
//   }
//   else{
//     digitalWrite(m_S1_pin, HIGH);
//   }
//   if (channel%2==0){
//     digitalWrite(m_S0_pin, LOW);
//   }
//   else{
//     digitalWrite(m_S0_pin, HIGH);
//   }
// }


const void Mux74HC4051::setChannel(byte channel){
  if (channel==0){
    digitalWrite(m_S0_pin, LOW);
    digitalWrite(m_S1_pin, LOW);
    digitalWrite(m_S2_pin, LOW);
  }
  if (channel==1){
    digitalWrite(m_S0_pin, HIGH);
    digitalWrite(m_S1_pin, LOW);
    digitalWrite(m_S2_pin, LOW);
  }
  if (channel==2){
    digitalWrite(m_S0_pin, LOW);
    digitalWrite(m_S1_pin, HIGH);
    digitalWrite(m_S2_pin, LOW);
  }
  if (channel==3){
    digitalWrite(m_S0_pin, HIGH);
    digitalWrite(m_S1_pin, HIGH);
    digitalWrite(m_S2_pin, LOW);
  }
  if (channel==4){
    digitalWrite(m_S0_pin, LOW);
    digitalWrite(m_S1_pin, LOW);
    digitalWrite(m_S2_pin, HIGH);
  }
  if (channel==5){
    digitalWrite(m_S0_pin, HIGH);
    digitalWrite(m_S1_pin, LOW);
    digitalWrite(m_S2_pin, HIGH);
  }
  if (channel==6){
    digitalWrite(m_S0_pin, LOW);
    digitalWrite(m_S1_pin, HIGH);
    digitalWrite(m_S2_pin, HIGH);
  }
  if (channel==7){
    digitalWrite(m_S0_pin, HIGH);
    digitalWrite(m_S1_pin, HIGH);
    digitalWrite(m_S2_pin, HIGH);
  }
}

const int Mux74HC4051::read(){
  int value = analogRead(m_Z_pin);
  return value;
}
