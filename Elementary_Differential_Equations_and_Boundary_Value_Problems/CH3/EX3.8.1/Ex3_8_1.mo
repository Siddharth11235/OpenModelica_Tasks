class Ex3_8_1
  /*  Page 189
  here the value of both the constants are assumed something, so the graphs will not match , for the graphs to match we need to put the right values for constants c1 and c2
  for mathing these graphs the value of c1 and c2 need to be calculated
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=0 to t=1*/
  Real u(start = 0.5);
  Real u1(start = 0);
  parameter Real y=2; //damping coefficient
  parameter Real k=24;//spring constant
  parameter Real m=1/8;
equation
  der(u) = u1;
  der(u1) = (-y/m * u1) - k/m * u;
end Ex3_8_1;