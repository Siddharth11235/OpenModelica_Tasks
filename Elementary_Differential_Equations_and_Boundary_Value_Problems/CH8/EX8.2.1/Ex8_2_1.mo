class Ex8_2_1
  /*  Page 431
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=1 to t=2*/
  Real y(start = 1);
equation
  der(y) = 1 - time + 4 * y;
end Ex8_2_1;