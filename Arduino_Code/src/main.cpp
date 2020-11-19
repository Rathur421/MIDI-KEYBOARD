#include <Arduino.h>

#include <rgb_lcd.h>

#include <VeloceKey.h>

#include <MIDI.h>


MIDI_CREATE_DEFAULT_INSTANCE();


// Init SCREEN
rgb_lcd lcd;

byte nb_note_on = 0;

// DEBOUNCE = 5
// Function
void update(VeloceKey KEYS[], int key_number){

  for (int i=0; i<key_number; i++){
    if (i==0){
      digitalWrite(12, LOW);
      digitalWrite(11, HIGH);
    }
    if (i==32){
      digitalWrite(12, HIGH);
      digitalWrite(11, LOW);
    }

    KEYS[i].update();
    if (KEYS[i].getKeyChanged()){

      if (KEYS[i].getKeyState()==2){
        MIDI.sendNoteOn(KEYS[i].getNote(), KEYS[i].getVelocity(), 1);
        lcd.clear();
        lcd.write("NOTE:");
        lcd.print(KEYS[i].getNote());
        lcd.setCursor(0,2);
        lcd.write("Velocity:");
        lcd.print(KEYS[i].getVelocity());
        nb_note_on++;
        if (nb_note_on>0){
          lcd.setRGB(127,200,127);
        }

      }
      else if (KEYS[i].getKeyState()==3){
        MIDI.sendNoteOff(KEYS[i].getNote(), KEYS[i].getVelocity(), 1);
        nb_note_on--;
        if (nb_note_on==0){
          lcd.setRGB(127,127,127);
        }
      }
    }
  }
}

// Init Keynote
// Keynote K0 = Keynote(write_mux_adresse, read_mux_adresse, Note);
VeloceKey NC2  = VeloceKey(0, 0, 24);
VeloceKey NCd2 = VeloceKey(0, 1, 25);
VeloceKey ND2  = VeloceKey(0, 2, 26);
VeloceKey NDd2 = VeloceKey(0, 3, 27);
VeloceKey NE2  = VeloceKey(0, 4, 28);
VeloceKey NF2  = VeloceKey(0, 5, 29);
VeloceKey NFd2 = VeloceKey(0, 6, 30);
VeloceKey NG2  = VeloceKey(0, 7, 31);
VeloceKey NGd2 = VeloceKey(2, 0, 32);
VeloceKey NA3  = VeloceKey(2, 1, 33);
VeloceKey NAd3 = VeloceKey(2, 2, 34);
VeloceKey NB3  = VeloceKey(2, 3, 35);
VeloceKey NC3  = VeloceKey(2, 4, 36);
VeloceKey NCd3 = VeloceKey(2, 5, 37);
VeloceKey ND3  = VeloceKey(2, 6, 38);
VeloceKey NDd3 = VeloceKey(2, 7, 39);
VeloceKey NE3  = VeloceKey(4, 0, 40);
VeloceKey NF3  = VeloceKey(4, 1, 41);
VeloceKey NFd3 = VeloceKey(4, 2, 42);
VeloceKey NG3  = VeloceKey(4, 3, 43);
VeloceKey NGd3 = VeloceKey(4, 4, 44);
VeloceKey NA4  = VeloceKey(4, 5, 45);
VeloceKey NAd4 = VeloceKey(4, 6, 46);
VeloceKey NB4  = VeloceKey(4, 7, 47);
VeloceKey NC4  = VeloceKey(6, 0, 48);
VeloceKey NCd4 = VeloceKey(6, 1, 49);
VeloceKey ND4  = VeloceKey(6, 2, 50);
VeloceKey NDd4 = VeloceKey(6, 3, 51);
VeloceKey NE4  = VeloceKey(6, 4, 52);
VeloceKey NF4  = VeloceKey(6, 5, 53);
VeloceKey NFd4 = VeloceKey(6, 6, 54);
VeloceKey NG4  = VeloceKey(6, 7, 55);
VeloceKey NGd4 = VeloceKey(0, 0, 56);
VeloceKey NA5  = VeloceKey(0, 1, 57);
VeloceKey NAd5 = VeloceKey(0, 2, 58);
VeloceKey NB5  = VeloceKey(0, 3, 59);
VeloceKey NC5  = VeloceKey(0, 4, 60);
VeloceKey NCd5 = VeloceKey(0, 5, 61);
VeloceKey ND5  = VeloceKey(0, 6, 62);
VeloceKey NDd5 = VeloceKey(0, 7, 63);
VeloceKey NE5  = VeloceKey(2, 0, 64);
VeloceKey NF5  = VeloceKey(2, 1, 65);
VeloceKey NFd5 = VeloceKey(2, 2, 66);
VeloceKey NG5  = VeloceKey(2, 3, 67);
VeloceKey NGd5 = VeloceKey(2, 4, 68);
VeloceKey NA6  = VeloceKey(2, 5, 69);
VeloceKey NAd6 = VeloceKey(2, 6, 70);
VeloceKey NB6  = VeloceKey(2, 7, 71);
VeloceKey NC6  = VeloceKey(4, 0, 72);
VeloceKey NCd6 = VeloceKey(4, 1, 73);
VeloceKey ND6  = VeloceKey(4, 2, 74);
VeloceKey NDd6 = VeloceKey(4, 3, 75);
VeloceKey NE6  = VeloceKey(4, 4, 76);
VeloceKey NF6  = VeloceKey(4, 5, 77);
VeloceKey NFd6 = VeloceKey(4, 6, 78);
VeloceKey NG6  = VeloceKey(4, 7, 79);
VeloceKey NGd6 = VeloceKey(6, 0, 80);
VeloceKey NA7  = VeloceKey(6, 1, 81);
VeloceKey NAd7 = VeloceKey(6, 2, 82);
VeloceKey NB7  = VeloceKey(6, 3, 83);
VeloceKey NC7  = VeloceKey(6, 4, 84);


const byte nb_key = 61;
VeloceKey Keypad[nb_key] = {NC2, NCd2, ND2, NDd2, NE2, NF2, NFd2, NG2, NGd2, NA3, NAd3, NB3,
  NC3, NCd3, ND3, NDd3, NE3, NF3, NFd3, NG3, NGd3, NA4, NAd4, NB4,
  NC4, NCd4, ND4, NDd4, NE4, NF4, NFd4, NG4, NGd4, NA5, NAd5, NB5,
  NC5, NCd5, ND5, NDd5, NE5, NF5, NFd5, NG5, NGd5, NA6, NAd6, NB6,
  NC6, NCd6, ND6, NDd6, NE6, NF6, NFd6, NG6, NGd6, NA7, NAd7, NB7, NC7};
// const byte nb_key = 1;
// VeloceKey Keypad[nb_key] = {NE3};

static Mux74HC4051 WRITE_MUX(1, 8, 9, 10, 1);
void setup() {
  MIDI.begin();
  lcd.begin(16, 2);
  Serial.begin(115200);
  pinMode(11,OUTPUT);
  pinMode(12,OUTPUT);
  pinMode(13,OUTPUT);
  lcd.setRGB(127,127,127);
  // Serial.println("helloworld");
}

void loop() {
  update(Keypad, nb_key);
  // WRITE_MUX.setChannel(4);
  // digitalWrite(11,HIGH);
  // digitalWrite(12,HIGH);
  // NC2.MainSwitchupdate();
  // Serial.println(analogRead(14));
}
