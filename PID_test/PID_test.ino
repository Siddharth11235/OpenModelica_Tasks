#include <PID_v1.h>

//Define Variables we'll be connecting to
double Setpoint;
double Input;
double Output;

//Specify the links and initial tuning parameters
PID myPID(&Input, &Output, &Setpoint,2,5,1, DIRECT);

void setup()
{
  //initialize the variables we're linked to
  Input = analogRead(A4);
  Setpoint =analogRead(A5);

  //turn the PID on
  myPID.SetMode(AUTOMATIC);
  Serial.begin(115200);
}

void loop()
{
  Input = analogRead(A4);
  myPID.Compute();
  analogWrite(A3,Output);
}
