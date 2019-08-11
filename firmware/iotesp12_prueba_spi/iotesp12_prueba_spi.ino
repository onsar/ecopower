// master

#include <SPI.h>

const int chipSelectPin = D0;

bool transmision_iniciada;
uint8_t datos_dispositivo;

void setup() {
  Serial.begin(9600);
  
  SPI.begin();

  pinMode(chipSelectPin, OUTPUT);
  digitalWrite(chipSelectPin, HIGH);

  transmision_iniciada = false;
  datos_dispositivo = 0;

  delay(100);
}

void loop() {

  uint8_t registro_leido = readRegister();
  
  if (transmision_iniciada && (datos_dispositivo > 0)){
    Serial.print("iniciada, registro: "); Serial.println(registro_leido);
    if(--datos_dispositivo <= 0) transmision_iniciada= false ;
  }
  else {
    if ((registro_leido & 0xF0) == 0xF0 ){
      transmision_iniciada = 1;
      datos_dispositivo = registro_leido & 0x0F ;
      Serial.print("Datos preparados, registro: "); Serial.println(registro_leido, HEX);
    }
    else Serial.println("esperando repuesta");
  }
  delay(100);

}

unsigned int readRegister() {
  
  uint8_t result = 0;
  digitalWrite(chipSelectPin, LOW);
  delay(100);
  result = SPI.transfer(0x01); // (unsigned int)
  digitalWrite(chipSelectPin, HIGH);
  
  // Serial.print("register value: ");
  // Serial.println(result);
  return (result);
}

/*

  if (buf [pos] == 0 || ++pos >= sizeof (buf))
    active = false;



*/
