class Ex1_2_2
  /*Page 13*/
  Real v(start=0);
  Real V;
  parameter Real g=9.8; //m/s2
  parameter Real y=2;   //kg/sec
  parameter Real m=10;  //kg
  /*here y is same as x its just he solution so using a different variable*/
equation
  der(v) = g - v*y/m;
  V = 49 * (1 - exp(-time / 5));
end Ex1_2_2;