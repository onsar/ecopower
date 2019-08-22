// master

/*
 * 
 * PROBLEMA: El esp12 recibe los datos por miso dependiendo del voltage de mosi
 * 
 * 
 * 
 * pasar de uint_16 a int a String en procesado de datos
 * 2 registros sin signo solo llegan a: -32,768 to 32,767
 * para alguna instalación puede ser insuficiente
 * 
 */



/*
 * Descubrimiento de esclavos
 * ===============================

 * estado = 0 inicio de la comunicacion       (sensores?)               B0   55   An  
 * estado = 1 confirmacion esclavo preparado  (final de comunicacion)   B8   An   55  
 * estado = 2 comprobacion, final de comunicacion                       B8   55   55
 * estado = 3 espera entre comuniaciones                                                            
 */


 /*
 * diagrama de estados del servidor
 * ===============================

 * estado = 0 inicio de la comunicacion       (sensores?)               B0   55   An  
 * estado = 1 confirmacion, cliente preparado (siguente registro)       B1   An   r1  
 * estado = 2 recepción de registros          (siguente registro)       B1   r1   r2
 *                                            (siguente registro)       B1   r2   r3
 *                                            (siguente registro)       B1   r3   rn
 *                                            (suma de registros)       B1   rn   suma
 * estado = 3 comprabar la trama recibida     (final de comunicacion)   B8   suma 55
 *                                                              
 * estado = 4 procesando y transmision de valores
 *            primer valor el de menor peso           registros_recibidos[0]
 *            segundo valor recibido el de mas peso   registros_recibidos[1]
 * Estado = 5 espera entre comuniaciones
 */

#define DEBUG 1

#include <SPI.h>


typedef struct {                                                      // RFM RF payload datastructure
  int pin_seleccion;
  int numero_sensores;
  String nombres_sesores[7];
} esclavo;

esclavo es1= {D0,0,"pinza_11","pinza_12","pinza_13","pinza_14","pinza_15","pinza_16","pinza_17"};
esclavo es2= {D1,0,"pinza_21","pinza_22","pinza_23","pinza_24","pinza_25","pinza_26","pinza_27"};
esclavo es3= {D2,0,"pinza_31","pinza_32","pinza_33","pinza_34","pinza_35","pinza_36","pinza_37"};
esclavo es4= {D8,0,"pinza_41","pinza_42","pinza_43","pinza_44","pinza_45","pinza_46","pinza_47"};

esclavo* esclavos_[] = {&es1, &es2, &es3, &es4};

const int max_esclavos = 4;
int numero_esclavos;              // esclavos reales conectados
esclavo* esclavo_seleccionado;
int posicion_esclavo;             // posicion del esclavo seleccionado

uint8_t registros_esclavo;        // numero de registros del dispositivo slave
uint8_t registros_recibidos[14];  // matriz para almacenar los datos recibidos
uint8_t registros_pendientes;     // registros pendientes de recibir desde el esclavo
uint8_t registros_suma;           // suma de los registros recibidos para comprobar

uint8_t estado;

uint32_t t_last_tx;               // tiempo de la ultima transmision de datos

void setup() {
  Serial.begin(9600);
  Serial.println ("Starting");
  
  SPI.begin();

  SPI.setClockDivider(SPI_CLOCK_DIV8);  // 2 MHz

  /* 
   *  CONFIGURACION DE LOS SENSORES
  */

  for(int n= 0; n < max_esclavos; n++){
    pinMode(esclavos_[n]->pin_seleccion, OUTPUT);
    digitalWrite(esclavos_[n]->pin_seleccion, HIGH); 
    }
    
  delay(1000);  
  
  
  // detectar los exclavos conectados
  numero_esclavos = 0;
  
  for(int n= 0; n < max_esclavos; n++){  
    uint8_t registro_leido = 0x00; 
    // esclavo_seleccionado = esclavos_[n];
    
    registro_leido = readRegister(0xB0,n);           // inicio de la comunicacion
    if(DEBUG) {Serial.print("inicio descubrimiento, registro_leido: "); Serial.println(registro_leido, HEX);}

    registro_leido = readRegister(0xB8,n);                   // confirmacion de esclavo preparado
    if (((registro_leido & 0xF0) == 0xA0)&&((registro_leido & 0x0F) >= 2)){
       esclavos_[n]->numero_sensores = registro_leido & 0x0F; 
      if(DEBUG){Serial.print("esclavo preparado, registro_leido: "); Serial.println(registro_leido, HEX);}
    }
    else{
      if(DEBUG){Serial.print("esclavo NO-preparado, registro_leido: "); Serial.println(registro_leido, HEX);}
      break;
    }
  
    registro_leido = readRegister(0xB8,n);                    //comprobacion, final de comunicacion 
    if(DEBUG){Serial.print("reset esclavo, registro_leido: "); Serial.println(registro_leido, HEX);}
    if (registro_leido == 0x55){ numero_esclavos = n+1;}
    else break;
  }

  /* 
   *  CONFIGURACION DE LAS VARIABLES DE LOS SENSORES
  */
  
  // esclavo_seleccionado = esclavos_[0];
  posicion_esclavo = numero_esclavos;
  registros_esclavo = 0; 
  t_last_tx=0;
  estado = 5; 
  delay(100);
}

void loop() {
  delay(100);


  uint32_t current_time= millis(); 


  
  if (current_time < t_last_tx) t_last_tx=0; 
  if (current_time - t_last_tx > 10000){             // inicio de la lectura del esclavo
    t_last_tx = current_time;
    posicion_esclavo++;
    if ( posicion_esclavo > (numero_esclavos-1)) {posicion_esclavo=0;}
    
    registros_esclavo = 0;
    for(int n=0; n<14; n++){registros_recibidos[n] = 0x00;}   
    registros_pendientes = 0;
    registros_suma = 0;

    estado = 0;

    
    if(DEBUG){
      Serial.print(F("******inicio comunicaciones estado=0 sgs: "));
      Serial.println(millis() / 1000);
      Serial.print("freeRam: "); Serial.println(ESP.getFreeHeap()); 
      Serial.print("esclavo: ");  Serial.println(posicion_esclavo);  
    } 
  }

  if(estado == 0){  //inicio de la comunicacion
    uint8_t registro_leido = readRegister(0xB0, posicion_esclavo); 
    estado = 1;  
    if(DEBUG) {Serial.print("Estado 0 -> Estado 1: "); Serial.println(registro_leido, HEX);}
    delay(10);
    return;
  } 
  
  if(estado == 1){  // confirmacion
    uint8_t registro_leido = readRegister(0xB1, posicion_esclavo); 
     
    if ((registro_leido & 0xF0) == 0xA0){         //priemera condicion para estado=2
      registros_esclavo = registro_leido & 0x0F ;
      registros_pendientes = registros_esclavo;
      if(registros_esclavo >= 2)estado = 2;       //segunda condicion para estado=2
      else estado = 5;
      if(DEBUG) {
        Serial.print("Estado 1 -> Estado: "); Serial.print(estado);
        Serial.print("  registro_leido: ");Serial.println((registro_leido), HEX);     
      }
    }
    else {                                        //no cumple la primera condicion
      estado = 5;
      if(DEBUG) {
        Serial.print("Estado 1 -> Estado: "); Serial.print(estado);
        Serial.print("  registro_leido: ");Serial.println((registro_leido), HEX);     
      }
    }
    return;
  } 
  
  if(estado == 2){  //recepcion de registros
    // uint32_t init_time= millis();
    if(registros_pendientes > 0){    
      uint8_t registro_leido = readRegister(0xB1, posicion_esclavo);
      uint8_t registro_orden = registros_esclavo - registros_pendientes;
      registros_recibidos[registro_orden]=registro_leido;    
      registros_pendientes = registros_pendientes-1 ;
      registros_suma = registros_suma + registro_leido;
      estado = 2;
      if(DEBUG){
        Serial.print("iniciada, registros_recibidos[]: "); Serial.print(registro_orden);
        Serial.print("  registro: "); Serial.println(registro_leido,HEX);
        Serial.print("registros_suma: "); Serial.println(registros_suma,HEX);
      }
    } 
    else {
      estado = 3;
      if(DEBUG) {Serial.print("Estado 2 -> Estado 3: "); Serial.println("registros_pendientes = 0");}
    }
    return;
  }

  if(estado == 3){  //comprabar la trama recibida con final de trama: registros_suma
    
    uint8_t registro_leido = readRegister(0xB8, posicion_esclavo);
    if(registro_leido == registros_suma){
      estado = 4;
      if(DEBUG) {
        Serial.print("Estado 3 -> Estado: "); Serial.print(estado);Serial.print("  trama correcta ");
        Serial.print("  registro_leido: ");Serial.println((registro_leido), HEX);     
      }      
    }
    else{
      estado=5;
      if(DEBUG) {
        Serial.print("Estado 3 -> Estado: "); Serial.print(estado); Serial.print("trama IN-correcta ");
        Serial.print("  registro_leido: ");Serial.println((registro_leido), HEX);     
      }       
    }
    return;
  }
  
  if(estado == 4){  //procesando y transmision de valores
    
    uint16_t valor_t = 0;
    uint16_t valor_l = 0;
    uint16_t valor_h = 0;
    for(uint8_t n=0; n < registros_esclavo; n=n+2){
      valor_l = uint16_t(registros_recibidos[n+1]);
      valor_h = uint16_t(registros_recibidos[n]);
      valor_h = valor_h << 8;
      valor_t = valor_l | valor_h;
      transmision(esclavos_[posicion_esclavo]->nombres_sesores[n/2]+":"+ String(int(valor_t)));    
    }
    estado=5;
    return;       
  }  
}

unsigned int readRegister(uint8_t a, int p) {
  
  uint8_t result = 0;
  digitalWrite(esclavos_[p]->pin_seleccion, LOW);
  delay(10);
  result = SPI.transfer(a); // (unsigned int)
  digitalWrite(esclavos_[p]->pin_seleccion, HIGH);
  delay(5);
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
