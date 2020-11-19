#ifndef Mux74HC4051_h
#define Mux74HC4051_h

#include "Arduino.h"

class Mux74HC4051
{
public:
  Mux74HC4051(byte Z_pin, byte S0_pin, byte S1_pin, byte S2_pin, bool Write);
  Mux74HC4051();
  const void setChannel(byte channel);
  const int read();
  // void write();

private:
  byte m_Z_pin;
  byte m_S0_pin;
  byte m_S1_pin;
  byte m_S2_pin;
  // bool m_Write;
};

#endif
