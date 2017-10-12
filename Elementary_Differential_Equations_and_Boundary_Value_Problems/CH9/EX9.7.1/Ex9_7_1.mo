class Ex9_7_1
  /*  Page 522
  here the graphs dont match because x and y are two separate functions
  all the constants are assumed to be 1
  here y and x are a function of time
  Simuated from t=0 to t=1*/
  Real y(start = 1);
  Real x(start = 1);
equation
  der(y) = (-x) + y - y * x * x - y * y * y;
  der(x) = y + x - x * x * x - x * y * y;
end Ex9_7_1;