class Ex8_6_1
  /*  Page 456
  here y and x is a function of time
  and ya and xa are the solns, also a fn of time
  Simuated from t=0 to t=1*/
  Real y(start = 0);
  Real ya;
  //answer of y
  Real x(start = 1);
  Real xa;
  //answer of x
equation
  der(y) = (-x) + y;
  der(x) = x - 4 * y;
  ya = (exp(-time) - exp(3 * time)) / 4;
  xa = (exp(-time) + exp(3 * time)) / 2;
end Ex8_6_1;