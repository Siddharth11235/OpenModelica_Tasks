class Ex9_4_1
  /*  Page 486
  here the graphs dont match because x and y are two separate functions
  all the constants are assumed to be 1
  here y and x are a function of time
  Simuated from t=0 to t=1*/
  Real y(start = 1);
  Real x(start = 1);
equation
  der(y) = 0.75 * y - y * y - 0.5 * x * y;
  der(x) = x - x * x - x * y;
end Ex9_4_1;