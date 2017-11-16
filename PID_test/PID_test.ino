#include <PID_v1.h>
#include <math.h>

//Define Variables we'll be connecting to
double Setpoint;
double Input;
double Output;

//Specify the links and initial tuning parameters
PID myPID(&Input, &Output, &Setpoint,2,5,1, DIRECT);

void setup()
{
  //initialize the variables we're linked to
    Serial.begin(9600);
    Serial1.begin(9600);
 
//  Setpoint =analogRead(A5);

  //turn the PID on
  myPID.SetMode(AUTOMATIC);
}

void loop()
{
  Setpoint = analogRead(A5);
 Input = Serial.read();
  delay(50);
  myPID.Compute();
  Serial.print(Output);
  delay(10);
  if Serial.available()
  {
   Serial.println(Output);
  delay(50);
  }
}
