
  /* This file is meant to be used with the SCILAB arduino  
   toolbox, however, it can be used from the IDE environment
   (or any other serial terminal) by typing commands like:
   
   Conversion ascii -> number
   48->'0' ... 57->'9' 58->':' 59->';' 60->'<' 61->'=' 62->'>' 63->'?' 64->'@' 
   65->'A' ... 90->'Z' 91->'[' 92->'\' 93->']' 94->'^' 95->'_' 96->'`' 
   97->'a' ... 122->'z'
   
   Dan0 or Dan1 : attach digital pin n (ascii from 2 to b) to input (0) or output (1)
   Drn : read digital value (0 or 1) on pin n (ascii from 2 to b)
   Dwn0 or Dwn1 : write 1 or 0 on pin n
   An    : reads analog pin n (ascii from 0 to 19)
   Wnm  : write analog value m (ascii from 0 to 255) on pin n (ascii from 0 to 19)
   Sa1 or Sa2 : Attach servo 1 (digital pin 9) or 2 (digital pin 10)
   Sw1n or Sw2n : moves servo 1 or servo 2 to position n (from ascii(0) to ascii(180))
   Sd1 or Sd2 : Detach servo 1 or 2
   
   Generic DC_Motor
   Cijkl : setup for generic DCmotor number i (1 to 4), PW1 on pin number j, PWM2 or direction on pin number k, mode=l
           l=0 for L293 (2 PWM) and l=1 for L298 (1PWM + 1 bit for direction)
   Mijk  : sets speed for generic DCmotor number i, j=0/1 for direction, k=ascii(0) .. ascii(255)
   Mir   : releases motor i (r=release)

   Generic Interrupt counter
   Iai   : activate counter on INT number i (i=ascii(2 or 3 or 18 or 19 or 20 or 21)
   Iri   : release counter on INT number i
   Ipi   : read counter on INT number i
   Izi   : reset counter on INT number i

   Generic Encoder
   Eajkl: activate encoder on channelA on INT number j (j=ascii(2 or 3 or 18 or 19 or 20 or 21) et channelB on pin k or INT number k (k=ascii(0)..ascii(53))
           and l=1 or 2 or 4 for 1x mode (count every rising of chA) or 2x mode (count every change statement of chA)
           or  4x mode (every change statement of chA et chB)
   Eri   : release encoder on INTi
   Epi   : read position of encoder on INTi
   Ezi   : reset value of encoder on INTi position
   
   R0    : sets analog reference to DEFAULT
   R1    : sets analog reference to INTERNAL
   R2    : sets analog reference to EXTERNAL

   */

#include <PID_v1.h>

//Define Variables we'll be connecting to
double Setpoint;
double Input;
double Output;
double aggKp=4, aggKi=0.2, aggKd=1;
double consKp=2, consKi=0.15, consKd=0.1;

/* define internal for the MEGA as 1.1V (as as for the 328)  */
#if defined(__AVR_ATmega1280__) || defined(__AVR_ATmega2560__)
#define INTERNAL INTERNAL1V1
#endif

/* create and initialize PID variable                              */
PID myPID(&Input, &Output, &Setpoint, consKp, consKi, consKd,P_ON_M, DIRECT);

int corresp[6]={2,3,21,20,19,18}; //Correspondance beetween interrupt number and pin number

//Generic counter
volatile long int counter_0=0,counter_1=0,counter_2=0,counter_3=0,counter_4=0,counter_5=0;

int initiat=1;

void setup() {
  /* initialize serial                                       */
  Serial.begin(115200);
  Input = analogRead(A4);
  Setpoint =analogRead(A5);

  //turn the PID on
  myPID.SetMode(AUTOMATIC);
  
}
void loop() {
  
  
   
  /* variables declaration and initialization                */
  
  static int  s   = -1;    /* state                          */
  static int  pin = 13;    /* generic pin number             */
  static int  dcm =  4;    /* generic dc motor number        */

  int  val =  0;           /* generic value read from serial */
  int  agv =  0;           /* generic analog value           */
  int  dgv =  0;           /* generic digital value          */
  static int  enc   = 1;    /* encoder number 1 (or 2 for Arduino mega)     */
  
  while (Serial.available()==0) {}; // Waiting char
  val = Serial.read(); 
  
  //Checking for availability of firmware
  if(val==118)
  {
    delay(10);
    Serial.write("ok"); 
  }
  
//  if (val==0){// version
//    Serial.print('v3');
//    val=-1;
//  }
  //case A -> Analog
  else if (val==65){//A -> Analog read
    while (Serial.available()==0) {}; // Waiting char
//    val=Serial.read();
//    if (val==114){ //'r'-> read pin
//       while (Serial.available()==0) {}; // Waiting char
       val=Serial.read();
       if (val>47 && val<67) { //from pin 0, to pin 19
          pin=val-48; //number of the pin
          agv=analogRead(pin);
          //Serial.println(agv);
          Serial.write((uint8_t*)&agv,2); /* send binary value via serial  */   
       }
       val=-1;
  }
  else if (val==87){//W -> Analog write
      while (Serial.available()==0) {}; // Waiting char
      val=Serial.read();
         if (val>47 && val<67) { //from pin 0 to pin 19
            pin=val-48; //number of the pin
            while (Serial.available()==0) {}; // Waiting char
            val=Serial.read();
            analogWrite(pin,val);
         }
          val=-1;
      }
  //}

  //case D -> Digital
  else if (val==68){//D -> Digital pins
    while (Serial.available()==0) {}; // Waiting char
    val=Serial.read();
    if (val==97){ //'a'-> declare pin
       while (Serial.available()==0) {}; // Waiting char
       val=Serial.read();
       if (val>49 && val<102) {
         pin=val-48;
         while (Serial.available()==0) {}; // Waiting char
         val=Serial.read();
         if (val==48 || val==49) { 
            if (val==48){//'0' -> input
               pinMode(pin,INPUT);
            }
            else if (val==49){//'1' -> output
               pinMode(pin,OUTPUT);
            }
         }
       }
    }
    if (val==114){ //'r'-> read pin
       while (Serial.available()==0) {}; // Waiting char
       val=Serial.read();
       if (val>49 && val<102) { 
          pin=val-48; //number of the digital pin
          dgv=digitalRead(pin);      
//          Serial.println(dgv);        
          Serial.print(dgv);         
       }
    }
    if (val==119){ //'w'-> write pin
       while (Serial.available()==0) {}; // Waiting char
       val=Serial.read();
       if (val>49 && val<102) { 
          pin=val-48; //number of the digital pin
          while (Serial.available()==0) {}; // Waiting char
          val=Serial.read();
          if (val==48 || val==49) { // 0 or 1
            dgv=val-48;
            digitalWrite(pin,dgv);
//            Serial.println(dgv);    
          }
       }
    }
   val=-1;

  }
  
  
  //case I -> Interrupt
  else if (val==73){
      /* ASKING ACTIVATION OF AN COUNTER     */
      while (Serial.available()==0) {}; // Waiting char
      val=Serial.read();                                
      if (val==97) { //a = activation
         while (Serial.available()==0) {};                 // Waiting char
         val=Serial.read();                                // Read int_number (must be 0 or 1 on UNO / 1 to 5 on MEGA) : int_number set to encoder number
         pinMode(corresp[val],INPUT);              // set interrupt pin as input
         if       (val == 0) {attachInterrupt(val, counter_0_change, RISING);counter_0=0;}  //counter INT0
         else if  (val == 1) {attachInterrupt(val, counter_1_change, RISING);counter_1=0;}  //counter INT1
         else if  (val == 2) {attachInterrupt(val, counter_2_change, RISING);counter_2=0;}  //counter INT2
         else if  (val == 3) {attachInterrupt(val, counter_3_change, RISING);counter_3=0;}  //counter INT3
         else if  (val == 4) {attachInterrupt(val, counter_4_change, RISING);counter_4=0;}  //counter INT4
         else if  (val == 5) {attachInterrupt(val, counter_5_change, RISING);counter_5=0;}  //counter INT5
      }
      /* ASKING POSITION OF A COUNTER     */ 
      if (val==112) { //p = sending counting value
         while (Serial.available()==0) {};   // Waiting char
         val = Serial.read()   ;             //reading next value = counter number
         if      (val==0){ Serial.write((uint8_t*)&counter_0,4); }// asking counter 0 
         else if (val==1){ Serial.write((uint8_t*)&counter_1,4); }// asking counter 1 
         else if (val==2){ Serial.write((uint8_t*)&counter_2,4); }// asking counter 2 
         else if (val==3){ Serial.write((uint8_t*)&counter_3,4); }// asking counter 3 
         else if (val==4){ Serial.write((uint8_t*)&counter_4,4); }// asking counter 4 
         else if (val==5){ Serial.write((uint8_t*)&counter_5,4); }// asking counter 5 
     }
      /* ASKING RELEASE OF AN INTERRUPT   */ 
      if (val==114) { //r = release counter 
         while (Serial.available()==0) {};        // Waiting char
         val = Serial.read();                     //reading next value = counter number
         detachInterrupt(val);                    // Detach interrupt on chanel A of counter num=val
         if (val==0)       { counter_0=0;}        // Reset counter
         else if (val==1)  { counter_1=0;}        // Reset counter
         else if (val==2)  { counter_2=0;}        // Reset counter
         else if (val==3)  { counter_3=0;}        // Reset counter
         else if (val==4)  { counter_4=0;}        // Reset counter
         else if (val==5)  { counter_5=0;}        // Reset counter
      }
      /* ASKING RESET VALUE OF AN COUNTER     */ 
      if (val==122) { //z set to zero
         while (Serial.available()==0) {};        // Waiting char
         val = Serial.read();                     //reading next value = counter number
         if (val==0)       { counter_0=0;}        // Reset counter
         else if (val==1)  { counter_1=0;}        // Reset counter
         else if (val==2)  { counter_2=0;}        // Reset counter
         else if (val==3)  { counter_3=0;}        // Reset counter
         else if (val==4)  { counter_4=0;}        // Reset counter
         else if (val==5)  { counter_5=0;}        // Reset counter
       }
    val=-1;

  } 
  Input = analogRead(A4);
  double gap = abs(Setpoint-Input); //distance away from setpoint
  if(gap<2)
  {  //we're close to setpoint, use conservative tuning parameters
    myPID.SetTunings(consKp, consKi, consKd);
  }
  else
  {
     //we're far from setpoint, use aggressive tuning parameters
     myPID.SetTunings(aggKp, aggKi, aggKd);
  }

  myPID.Compute();
  myPID.Compute();
  analogWrite(A3,Output);
  
} /* end loop statement                                      */



/**************************************/
// Generic interrupt counter functions//
/**************************************/
//Counter on INT0
void counter_0_change() { //counter 0
  counter_0++;
}
//Counter on INT1
void counter_1_change() { //counter 1
  counter_1++;
}
//Counter on INT2
void counter_2_change() { //counter 2
  counter_2++;
}
//Counter on INT3
void counter_3_change() { //counter 3
  counter_3++;
}
//Counter on INT4
void counter_4_change() { //counter 4
  counter_4++;
}
//Counter on INT5
void counter_5_change() { //counter 5
  counter_5++;
}


