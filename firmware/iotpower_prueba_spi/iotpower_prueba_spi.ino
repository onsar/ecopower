// Slave


/*
 * diagrama de estados del servidor
 * ===============================

 * estado = 0 inicio de la comunicacion               B0   03   An  
 * estado = 1 confirmacion, cliente preparado         B1   An   r1  
 * estado = 2 recepción de registros                  B1   r1   r2
 *                                                    B1   rn   A1
 *                                                    B1   A1   03
 *                                                              
 * estado = 3 comprabar la trama recibida con final de trama:0xA1
 * estado = 4 procesando y transmision de valores
 *            primer valor el de menor peso           registros_recibidos[0]
 *            segundo valor recibido el de mas peso   registros_recibidos[1]
 * Estado = 5 espera entre comuniaciones
 */
 
#define DEBUG 1

#define DATOS 0x04

#include <SPI.h>

uint8_t datos_matrix[] = {0xC1,0xC2,0xC3,0xC4};
uint8_t datos_pendientes;
uint32_t t_last_tx;

void setup (void)
{
  Serial.begin(9600);

  pinMode(MISO, OUTPUT);

  // turn on SPI in slave mode
  SPCR |= bit(SPE);

  // turn on interrupts
  SPCR |= bit(SPIE);

  SPDR = 0x00;
  datos_pendientes = 0;

}  // end of setup


// SPI interrupt routine
ISR (SPI_STC_vect){
  byte c = SPDR;
  
  if(c==0xB0){ // inicio
    
    datos_pendientes = DATOS;
    SPDR = 0xA0 | DATOS;
    if(DEBUG) {Serial.print("inicio, datos_pendientes:   ");Serial.println("reseteo");}
  }

  if(c==0xB1){// transmision iniciada
    
    if(datos_pendientes > 0) {
      SPDR = datos_matrix[DATOS - datos_pendientes];
      datos_pendientes = datos_pendientes-1;
      if(DEBUG) {
        Serial.print("bit recibido =  "); Serial.println(c,HEX);
        Serial.print("datos_pendientes =  "); Serial.println(datos_pendientes);
      }
    }
    else{
      datos_pendientes = 0;
      SPDR = 0x55;
      if(DEBUG) {
        Serial.print("bit recibido =  "); Serial.println(c,HEX);
        Serial.println("final conexion, datos_pendientes= 0  SPDR = 0x55");
      }
    }  
  }
  //Serial.print("bit recibido =  "); Serial.println(c,HEX);

}  // end of interrupt service routine (ISR) SPI_STC_vect




void loop (void)
{
  /*
  uint32_t current_time= millis();
     
  if ((current_time - t_last_tx) > 10000)
    {      
      Serial.print(F("current_time - sgs: ")); Serial.println(millis() / 1000);
      t_last_tx = current_time;    
      datos_tx = DATOS;
      SPDR = 0xF0 | DATOS;
    }


*/
}  // end of loop
