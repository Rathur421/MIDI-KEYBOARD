#include "VeloceKey.h"


static Mux74HC4051 WRITE_MUX(1, 8, 9, 10, 1);
// As the mux are controlled by the same pin on the arduino shield they are the same for the arduino
static Mux74HC4051 READMUX(14, 5, 6, 7, 0);

// NOTE : Key
// NEED 2 Switch
// NEED 1 TIMER
// NEED 1 Velocity Var
VeloceKey::VeloceKey(){}

VeloceKey::VeloceKey(byte mux_write_adresse, byte mux_read_adresse, byte note){
  m_mux_read_adresse = mux_read_adresse;
  m_mux_write_adresse = mux_write_adresse;
  m_note = note;
  m_state = 0;
}

const void VeloceKey::read(){

  Serial.print(this->getMainSwitchState());
  Serial.print(" ; ");
  Serial.print(this->getVelocitySwitchState());
  Serial.print("\n");
}

const bool VeloceKey::getMainSwitchState(){
  if (m_state & (1<<1)){
    return 1;
  }
  return 0;
}

const bool VeloceKey::getMainSwitchPreviousState(){
  if (m_state & (1<<0)){
    return 1;
  }
  else {
    return 0;
  }
}

const bool VeloceKey::getMainSwitchChanged(){
  if (this->getMainSwitchState()!=this->getMainSwitchPreviousState()){
    return 1;
  };
  return 0;
}

void VeloceKey::MainSwitchupdate(){
  int State;
  bool new_state;
  bool current_state = this->getMainSwitchState();
  READMUX.setChannel(m_mux_read_adresse);
  WRITE_MUX.setChannel(m_mux_write_adresse);
  State = READMUX.read();
  if (State <700){
    new_state = 0;
    if (new_state != current_state){
      m_state &= 0xFD; // state = 0
      m_state |= 0x01; // previous state = 1
    }
    else{
      m_state &= 0xFC; // previous and current state = 0
    }
  }
  else {
    new_state = 1;
    if (new_state != current_state){
      m_state |= 0x02; // state = 1
      m_state &= 0xFE; // previous state = 0
    }
    else{
      m_state |= 0x03; // previous and current state = 1
      }
    }
}

const bool VeloceKey::getVelocitySwitchState(){
  if (m_state & (1<<3)){
    return 1;
  };
  return 0;
}

const bool VeloceKey::getVelocitySwitchPreviousState(){
  if (m_state & (1<<2)){
    return 1;
  };
  return 0;
}

const bool VeloceKey::getVelocitySwitchChanged(){
  if (this->getVelocitySwitchState()!=this->getVelocitySwitchPreviousState()){
    return 1;
  };
  return 0;
}

void VeloceKey::VelocitySwitchupdate(){
  int State;
  bool new_state;
  bool current_state = this->getVelocitySwitchState();

  READMUX.setChannel(m_mux_read_adresse);
  WRITE_MUX.setChannel(m_mux_write_adresse + 1);
  State = READMUX.read();

  if (State <700){
    new_state = 0;
    if (new_state != current_state){
      m_state &= 0xF7; // state = 0
      m_state |= 0x04; // previous state = 1
    }
    else{
      m_state &= 0xF3; // previous and current state = 0
    }
  }
  else {
    new_state = 1;
    if (new_state != current_state){
      m_state |= 0x08; // state = 1
      m_state &= 0xFB; // previous state = 0
    }
    else{
      m_state |= 0x0C; // previous and current state = 1
      }
    }
}

const byte VeloceKey::getKeyState(){
  bool mainswitchstate = this->getMainSwitchState();
  bool velocityswitchstate = this->getVelocitySwitchState();
  if ((mainswitchstate==0) & (velocityswitchstate==0)){
    return 0;
  };
  if ((mainswitchstate==1) & (velocityswitchstate==1)){
    return 2;
  };
  if ((mainswitchstate==1) & (velocityswitchstate==0)){
    byte keypreviousstate = this->getKeyPreviousState();
    if (keypreviousstate==0 or keypreviousstate==1){
      return 1;
    }
    else{
      return 3;
    };
  };
}

const byte VeloceKey::getKeyPreviousState(){
  // NOTE: TEST if bits 5 and 4 of m_state are equal to :
  bool bit5 = m_state&(1<<5);
  bool bit4 = m_state&(1<<4);

  if ((!bit5) & (bit4)){ // 01
    return 1;
  };
  if ((bit5) & (!bit4)){ // 10
    return 2;
  };
  if ((bit5) & (bit4)){ // 11
    return 3;
  };
  return 0;
}

const bool VeloceKey::getKeyChanged(){
  if (this->getKeyState()!=this->getKeyPreviousState()){
    return 1;
  };
  return 0;
}


const byte VeloceKey::getNote(){
  return m_note;
}

const byte VeloceKey::getVelocity(){
  return m_velocity;
}

void VeloceKey::setnote(byte new_note){
  m_note = new_note;
}

void VeloceKey::setVelocity(){
  int timer = millis() - m_time;
  int velocity = (200 - timer)*127/200;
  if (velocity>127){
    velocity = 127;
  }
  if (velocity<0){
    velocity = 0;
  }
  m_velocity= velocity;
}

void VeloceKey::update()
{
  byte state = this->getKeyState();
  if (state==0 or state==3){

    this->MainSwitchupdate();

    if (state==0){         // Set actual state as previous state in m_state
      m_state &= 0xCF;     // Set actual state as previous state in m_state

      if (this->getMainSwitchChanged()){
        m_time = millis();
      }
    }
    else {                 // Set actual state as previous state in m_state
      m_state |= 0x30;     // Set actual state as previous state in m_state
    };                     // Set actual state as previous state in m_state
      // NOTE: if the new state we should send MIDI.sendNoteOff(KEYS[i].getNote(), KEYS[i].getVelocity(), 1);
  }
  else if (state==1 or state==2){

    this->VelocitySwitchupdate();

    if (state==1){        // Set actual state as previous state in m_state
      m_state &= 0xDF;    // Set actual state as previous state in m_state
      m_state |= 0x10;    // Set actual state as previous state in m_state

      if (this->getVelocitySwitchChanged()){
        this->setVelocity();
      }
    }                     // Set actual state as previous state in m_state
    else{                 // Set actual state as previous state in m_state
      m_state &= 0xEF;    // Set actual state as previous state in m_state
      m_state |= 0x20;    // Set actual state as previous state in m_state
    };
      // NOTE: if the new state is 2 we should send MIDI.sendNoteOn(KEYS[i].getNote(), KEYS[i].getVelocity(), 1);
  }
}
