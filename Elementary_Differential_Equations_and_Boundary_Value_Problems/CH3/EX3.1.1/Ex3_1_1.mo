class Ex3_1_1
  /*  Page 133
  the values of c1 and c2 is taken to be 1
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=0 to t=1*/
  Real y(start = 2);
  Real y1(start = -5);
  Real x;
equation
  der(y) = y1;
  der(y1) = (-5 * y1) - 6 * y;
  x = exp(-2 * time) + exp(-3 * time);
end Ex3_1_1;