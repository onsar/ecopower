// master

/*
 * 
 * PROBLEMA: El esp12 recibe los datos por miso dependiendo la la tensión de mosi
 * 
 * 
 * 
 * pasar de uint_16 a int a String en procesado de datos
 * 2 registros sin signo solo llegan a: -32,768 to 32,767
 * para alguna instalación puede ser insuficiente
 * 
 */

#define DEBUG 1

#include <SPI.h>

/*
 * diagrama de estados del servidor
 * ===============================

 * estado = 0 inicio de la comunicacion               B0   03   An  
 * estado = 1 confirmacion, cliente preparado         B1   An   r1  
 * estado = 2 recepción de registros                  B1   r1   r2
 *                                                    B1   rn   03
 *                                                              
 * estado = 3 procesando y transmision de valores
 * Estado = 4 espera entre comuniaciones
 */

uint8_t estado;

const int chipSelectPin = D0;

uint8_t datos_dispositivo; 
uint8_t datos_pendientes;
uint8_t registros_recibidos[14];
String nombres_sesores[8]= {"pinza_1","pinza_2","pinza_3","pinza_4","pinza_5","pinza_6","pinza_7"};

uint32_t t_last_tx;

void setup() {
  Serial.begin(9600);
  Serial.println ("Starting");
  
  SPI.begin();

  pinMode(chipSelectPin, OUTPUT);
  digitalWrite(chipSelectPin, HIGH);

  SPI.setClockDivider(SPI_CLOCK_DIV8);

  datos_dispositivo = 0;

  t_last_tx=0;
  
  estado = 0;

  delay(100);
}

void loop() {

/*
  uint32_t current_time= millis();
  
  if (current_time < t_last_tx) t_last_tx=0; 
  if (current_time - t_last_tx > 10000){  
    t_last_tx = current_time;
    estado = 0;
    if(DEBUG){
      Serial.print(F("******Print LCD - sgs: "));
      Serial.println(millis() / 1000);
      // Serial.print("freeRam: "); Serial.println(freeRam());   
      Serial.flush();    
    } 
  }

*/
  if(estado == 0){  //inicio de la comunicacion
    uint8_t registro_leido = readRegister(0xB0); 
    estado = 1;  
     if(DEBUG) {Serial.print("Estado 0 -> Estado 1: "); Serial.println(registro_leido, HEX);}
     delay(10);
  } 
  
  if(estado == 1){  // confirmacion
    uint8_t registro_leido = readRegister(0xB1); 
     
    if ((registro_leido & 0xF0) == 0xA0){
      datos_dispositivo = registro_leido & 0x0F ;
      datos_pendientes = datos_dispositivo;
      if(datos_dispositivo >= 2)estado = 2;
      else estado=0;
      if(DEBUG) {
        Serial.print("Estado 1 -> Estado "); Serial.print(estado);
        Serial.print("  registro_leido: ");Serial.println((registro_leido), HEX);     
      }
    }
    else {
      estado = 0;
      if(DEBUG) {Serial.print("Estado 1 -> Estado 0: "); Serial.println(registro_leido, HEX);}
    }
    //delay(100);
  } 
  
  if(estado == 2){  //recepcion de registros
    // uint32_t init_time= millis();
    if(datos_pendientes > 0){
      
      uint8_t registro_leido = readRegister(0xB1);
      uint8_t registro_orden =datos_dispositivo - datos_pendientes;
      registros_recibidos[registro_orden]=registro_leido;    
      datos_pendientes = datos_pendientes-1 ;
      estado = 2;
      if(DEBUG){
        Serial.print("iniciada, registros_recibidos[]: "); Serial.print(registro_orden);
        Serial.print("  registro: "); Serial.println(registro_leido);
      }
    } 
    else {
      estado = 3;
      if(DEBUG) {Serial.print("Estado 2 -> Estado 3: "); Serial.println("datos_pendientes = 0");}
    }
    // uint32_t final_time= millis(); Serial.println(final_time - init_time);
    
    delay(100);
  }



// ********************

  if(estado == 3){  //recepcion de registros
    
      uint8_t registro_leido = readRegister(0xB1);
      if(registro_leido == 0xA1){
        estado = 4;
        if(DEBUG){
          Serial.print("Estado 3 -> Estado 4: ");Serial.print("transmision correcta ");
          Serial.print("  registro: "); Serial.println(registro_leido,HEX);
        }       
      }
      else{
        estado=0;
        if(DEBUG){   
          Serial.print("Estado 3 -> Estado 0: "); Serial.print("transmision IN-correcta ");
          Serial.print("  registro: "); Serial.println(registro_leido,HEX);
        }       
      }
    
    delay(100);
  }



// *********************




  
  
  if(estado == 4){  //procesando y transmision de datos
    
    uint16_t valor_t = 0;
    uint16_t valor_l = 0;
    uint16_t valor_h = 0;
    for(uint8_t n=0; n < datos_dispositivo; n=n+2){
      valor_l = uint16_t(registros_recibidos[n+1]);
      valor_h = uint16_t(registros_recibidos[n]);
      valor_h = valor_h << 8;
      valor_t = valor_l | valor_h;
      transmision(nombres_sesores[n/2]+":"+ String(int(valor_t)));    
    }
    estado=0;
    delay(1000);       
  }  
}

unsigned int readRegister(uint8_t a) {
  
  uint8_t result = 0;
  digitalWrite(chipSelectPin, LOW);
  delay(5);
  result = SPI.transfer(a); // (unsigned int)
  digitalWrite(chipSelectPin, HIGH);
  
  // Serial.print("register value: ");
  // Serial.println(result);
  return (result);
}

void transmision(String this_string){
  Serial.println("valor a transmitir: ");
  Serial.println(this_string);

}

/*

  if (buf [pos] == 0 || ++pos >= sizeof (buf))
    active = false;



*/
