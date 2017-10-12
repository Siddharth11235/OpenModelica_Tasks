class Ex3_1_2
  /*  Page 134
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=0 to t=1*/
  Real y(start = 2);
  Real y1(start = 3);
  Real x;
equation
  der(y) = y1;
  der(y1) = (-5 * y1) - 6 * y;
  x = 9 * exp(-2 * time) - 7 * exp(-3 * time);
end Ex3_1_2;