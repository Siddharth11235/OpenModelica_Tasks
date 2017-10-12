class Ex9_2_1
  /*  Page 476
  all constants are assumed to be 1 and accordingly setting intial values
  here y and x is a function of time
  and ya and xa are the solns, also a fn of time
  Simuated from t=0 to t=1*/
  Real y(start = 0);
  Real ya;
  //answer of y
  Real x(start = 2);
  Real xa;
  //answer of x
equation
  der(y) = x;
  der(x) = y;
  ya = exp(time) - exp(-time);
  xa = exp(-time) + exp(time);
end Ex9_2_1;