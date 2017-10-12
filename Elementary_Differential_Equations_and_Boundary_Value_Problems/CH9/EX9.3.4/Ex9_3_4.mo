class Ex9_3_4
  /*  Page 486
  different plots can be obtained by changing the initial values of x and y
  the graphs do not match because x and y are to separate solutions 
  here y and x is a function of time
  Simuated from t=0 to t=1*/
  Real y(start = 1);
  Real x(start = 1);
equation
  der(y) = (-9 * sin(x)) - y / 5;
  der(x) = y;
end Ex9_3_4;