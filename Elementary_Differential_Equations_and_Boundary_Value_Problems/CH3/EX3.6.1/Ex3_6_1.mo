class Ex3_6_1
  /*  Page 171
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=0 to t=2*/
  Real y(start = -0.5);
  Real y1(start = -1);
  Real x;
equation
  der(y) = y1;
  der(y1) = 4 * y + 3 * y1 + 3 * exp(time * 2);
  x = -exp(2 * time) / 2;
end Ex3_6_1;