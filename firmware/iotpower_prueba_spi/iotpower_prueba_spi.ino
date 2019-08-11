// Slave

# define DATOS 0x04


uint8_t datos_matrix[] = {DATOS,0xA1,0xA2,0xA3,0xA4};
uint8_t datos_tx;
uint32_t t_last_tx;

void setup (void)
{
  Serial.begin(9600);
  // have to send on master in, *slave out*
  pinMode(MISO, OUTPUT);

  // turn on SPI in slave mode
  SPCR |= bit(SPE);

  // turn on interrupts
  SPCR |= bit(SPIE);

  SPDR = 0x00;
  datos_tx = 0;

}  // end of setup


// SPI interrupt routine
ISR (SPI_STC_vect)
{
  byte c = SPDR;
  
  if(datos_tx > 0){
    datos_tx--; 
    Serial.print("ISR (SPI_STC_vect):   ");Serial.println(datos_matrix[DATOS - datos_tx]);
    SPDR = datos_matrix[DATOS - datos_tx];
      
  }
  else {
    Serial.print("ISR (SPI_STC_vect_else):   ");Serial.println(0);
    datos_tx=0;
    SPDR = 0;
  }

}  // end of interrupt service routine (ISR) SPI_STC_vect

void loop (void)
{
  uint32_t current_time= millis();
     
  if ((current_time - t_last_tx) > 20000)
    {      
      Serial.print(F("current_time - sgs: ")); Serial.println(millis() / 1000);
      t_last_tx = current_time;    
      datos_tx = DATOS;
      SPDR = 0xF0 | DATOS;
    }

}  // end of loop
