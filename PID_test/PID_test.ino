#include <PID_v1.h>

// Tuning parameters
float Kp=1; //Initial Proportional Gain
float Ki=0.1  ; //Initial Integral Gain
float Kd=0.15; //Initial Differential Gain
double Setpoint, Input, Output; //These are just variables for storingvalues
PID myPID(&Input, &Output, &Setpoint, Kp, Ki, Kd, DIRECT);
// This sets up our PID Loop
//Input is our PV
//Output is our u(t)
//Setpoint is our SP
const int sampleRate = 1; // Variable that determines how fast our PID loop runs
// Communication setup
const long serialPing = 500; //This determines how often we ping our loop
// Serial pingback interval in milliseconds
unsigned long now = 0; //This variable is used to keep track of time
// placehodler for current timestamp
unsigned long lastMessage = 0; //This keeps track of when our loop last spoke to serial
// last message timestamp.
void setup(){
   Serial.begin(9600);
 String inString = Serial.readString();
 Input = inString.toDouble(); //Change read scale to analog
 Setpoint = analogRead(5);
//get our setpoint from our pot
 //Start a serial session
 myPID.SetMode(AUTOMATIC); //Turn on the PID loop
 myPID.SetSampleTime(sampleRate); //Sets the sample rate

 Serial.println("Begin"); // Hello World!
 lastMessage = millis(); // timestamp
}
void loop(){
 String inString = Serial.readString();
 float Input = inString.toDouble(); //Change read scale to analog
 Setpoint = analogRead(5);
 myPID.Compute(); //Run the PID loop
 analogWrite(1,Output); //Write out the output from the PID loop to our LED pin

 now = millis(); //Keep track of time
 if(now - lastMessage > serialPing) { //If it has been long enough give us some info on serial
 // this should execute less frequently
 // send a message back to the mother ship
 Serial.print("Setpoint = ");
 Serial.print(Setpoint);
 Serial.print(" Input = ");
 Serial.print(Input);
 Serial.print(" Output = ");
 Serial.print(Output);
 Serial.print("\n");
 if (Serial.available() > 0) { //If we sent the program a command deal with it
 for (int x = 0; x < 4; x++) {
 switch (x) {
 case 0:
 Kp = Serial.parseFloat();
 break;
 case 1:
 Ki = Serial.parseFloat();
 break;
 case 2:
 Kd = Serial.parseFloat();
 break;
 case 3:
 for (int y = Serial.available(); y == 0; y--) {
 Serial.read(); //Clear out any residual junk
 }
 break;
 }
 }
 Serial.print(" Kp,Ki,Kd = ");
 Serial.print(Kp);
 Serial.print(",");
 Serial.print(Ki);
 Serial.print(",");
 Serial.println(Kd); //Let us know what we just received
 myPID.SetTunings(Kp, Ki, Kd); //Set the PID gain constants and start running
 }

 lastMessage = now;
 //update the time stamp.
 }

}
