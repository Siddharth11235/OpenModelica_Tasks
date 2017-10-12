class Ex8_5_2
  /*  Page 450
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=0 to t=1*/
  Real y(start = 1);
  Real x;
equation
  der(y) = (-100 * y) + 100 * time + 1;
  x = exp(-100 * time) + time;
end Ex8_5_2;