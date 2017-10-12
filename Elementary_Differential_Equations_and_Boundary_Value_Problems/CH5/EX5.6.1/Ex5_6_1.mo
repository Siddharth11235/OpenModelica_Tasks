class Ex5_6_1
  /*  Page 268
  Here different values of y can be seem but the final solution is not shown in the example but are given as a power series, so the summation function cannot be implied
  here y is a function of time
  Simuated from t=1 to t=2*/
  Real y(start = 1);
  Real y1(start = 0.5);
  Real x;
equation
  der(y) = y1;
  der(y1) = (x*y1-y-x*y) / 2*x*x;
  x=time;
end Ex5_6_1;