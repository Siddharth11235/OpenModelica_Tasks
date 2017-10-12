class Ex3_4_2
  /*  Page 156
  The values of c2 and c2 equals 1
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=0 to t=2*/
  Real y(start = 1);
  Real y1(start = 3);
  Real x;
equation
  der(y) = y1;
  der(y1) = -9 * y;
  x = cos(3 * time) + sin(3 * time);
end Ex3_4_2;