class Ex3_8_2
  /*  Page 191
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=0 to t=2*/
  Real u(start = 1 / 6);
  Real u1(start = 1);
  parameter Real m=10/32; //mass
  parameter Real k=60; //spring constant  
  Real x;
equation
  der(u) = u1;
  der(u1) = -k/m * u;
  x = cos(8 * time * sqrt(3)) / 6 + sin(8 * time * sqrt(3)) / (8 * sqrt(3));
end Ex3_8_2;