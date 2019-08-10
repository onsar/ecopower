// master

#include <SPI.h>


//PCB's memory register addresses:
const int value_status = 0x00;
const int power1_direction = 0x01;
const int power2_direction = 0x02;
const int power3_direction = 0x03;
const int power4_direction = 0x04;
const int power5_direction = 0x05;
const int power6_direction = 0x06;

int power_directions[]={value_status, power1_direction,power2_direction,power3_direction
                        ,power4_direction,power5_direction,power6_direction};

const int chipSelectPin = D0;

void setup() {
  Serial.begin(9600);
  
  SPI.begin();

  pinMode(chipSelectPin, OUTPUT);
  digitalWrite(chipSelectPin, HIGH);

  delay(100);
}

void loop() {
  unsigned int read_ready = 0;
  read_ready = readRegister(power_directions[0]);
  Serial.print("read_ready: "); Serial.println(read_ready);
  // don't do anything until the data is ready:
  if (read_ready == 1) {
    unsigned int power1_w = readRegister(power_directions[1]);
    Serial.print("power1_w: "); Serial.println(power1_w);

  }
}

unsigned int readRegister(byte thisRegister) {
  
  unsigned int result = 0;
  Serial.print("readRegister");
  Serial.println(thisRegister, BIN);
  Serial.print("\t");

  byte dataToSend = thisRegister;

  digitalWrite(chipSelectPin, LOW);
  
  result = (unsigned int)SPI.transfer(thisRegister);

  digitalWrite(chipSelectPin, HIGH);

  return (result);
}

/*

  if (buf [pos] == 0 || ++pos >= sizeof (buf))
    active = false;



*/
