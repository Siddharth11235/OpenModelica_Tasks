class Ex3_5_2
  /*  Page 164
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=0 to t=2*/
  Real y(start = 2);
  Real y1(start = 1 / 3);
  Real x;
equation
  der(y) = y1;
  der(y1) = y1 - 0.25 * y;
  x = 2 * exp(time / 2) - 2 * time * exp(time / 2) / 3;
end Ex3_5_2;