class Ex3_5_1
  /*  Page 161
  The values of c2 and c2 equals 1
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=0 to t=2*/
  Real y(start = 1);
  Real y1(start = -1);
  Real x;
equation
  der(y) = y1;
  der(y1) = (-4 * y1) - 4 * y;
  x = exp(-2 * time) + time * exp(-2 * time);
end Ex3_5_1;