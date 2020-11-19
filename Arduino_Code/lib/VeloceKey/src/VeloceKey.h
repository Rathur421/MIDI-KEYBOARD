#ifndef VeloceKey_h
#define VeloceKey_h

#include <Arduino.h>
#include "Mux74HC4051.h"
// #include <Switch.h>


class VeloceKey
{
  public:
    VeloceKey(byte mux_write_adresse, byte mux_read_adresse, byte note);
    VeloceKey();

    const void read();

    const bool getMainSwitchState();
    const bool getMainSwitchPreviousState();
    const bool getMainSwitchChanged();
    void MainSwitchupdate();

    const bool getVelocitySwitchState();
    const bool getVelocitySwitchPreviousState();
    const bool getVelocitySwitchChanged();
    void VelocitySwitchupdate();

    const byte getKeyState();
    const byte getKeyPreviousState();
    const bool getKeyChanged();

    const byte getNote();
    const byte getVelocity();

    void setnote(byte new_note);
    void setVelocity();

    void update();

  private:

    unsigned long m_time;

    byte m_mux_write_adresse;
    byte m_mux_read_adresse;

    byte m_state;

    byte m_velocity;

    byte m_note;
};
#endif
