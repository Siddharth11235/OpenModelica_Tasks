class Ex3_1_3
  /*  Page 134
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=0 to t=1*/
  Real y(start = 2);
  Real y1(start = 0.5);
  Real x;
equation
  der(y) = y1;
  der(y1) = 2 * y1 - 3 * y / 4;
  x = (-exp(3 * time / 2) / 2) + 5 * exp(time / 2) / 2;
end Ex3_1_3;