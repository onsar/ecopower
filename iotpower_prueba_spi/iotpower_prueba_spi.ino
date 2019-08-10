// Slave

void setup (void)
{

  // have to send on master in, *slave out*
  pinMode(MISO, OUTPUT);

  // turn on SPI in slave mode
  SPCR |= bit(SPE);

  // turn on interrupts
  SPCR |= bit(SPIE);
}  // end of setup


// SPI interrupt routine
ISR (SPI_STC_vect)
{
  byte c = SPDR;
  
  switch (c) {
    case 0x00:      //data ready
      SPDR = 0x01;
      break;
    case 0x01:      //first regester
      SPDR = 0xA1;
      break;
    case 0x02:
      SPDR = 0xA2;
      break;
    case 0x03:
      SPDR = 0xA3;
      break;
    case 0x04:
      SPDR = 0xA4;
      break;
    case 0x05:
      SPDR = 0xA5;
      break;
    case 0x06:
      SPDR = 0xA6;
      break;    
  }

}  // end of interrupt service routine (ISR) SPI_STC_vect

void loop (void)
{

}  // end of loop
