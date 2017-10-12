class Ex9_6_3
  /*  Page 517
  here the graphs dont match because x and y are two separate functions
  here graphs are matching as it is just a co incidence
  all the constants are assumed to be 1
  here y and x are a function of time
  Simuated from t=0 to t=1*/
  Real y(start = 1);
  Real x(start = 1);
equation
  der(y) = (-y) - x * x * y;
  der(x) = (-x) - x * y * y;
end Ex9_6_3;