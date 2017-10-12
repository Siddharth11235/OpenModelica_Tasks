class Ex3_4_3
  /*  Page 156
  The values of c2 and c2 equals 1
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=0 to t=2*/
  Real y(start = -2);
  Real y1(start = 1);
  Real x;
equation
  der(y) = y1;
  der(y1) = y1 / 2 - 145 * y / 16;
  x = (-2 * exp(time / 4) * cos(3 * time)) + exp(time / 4) * sin(3 * time) / 2;
end Ex3_4_3;