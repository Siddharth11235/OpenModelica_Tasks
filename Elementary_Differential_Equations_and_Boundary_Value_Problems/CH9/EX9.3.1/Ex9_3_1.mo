class Ex9_3_1
  /*  Page 481
  the graphs do not match because x and y are to separate solutions 
  here y and x is a function of time
  Simuated from t=0 to t=1*/
  Real y(start = 1);
  Real x(start = 1);
equation
  der(y) = 0.5 * y - 0.75 * x * y - 0.25 * y * y;
  der(x) = x - x * x - x * y;
end Ex9_3_1;