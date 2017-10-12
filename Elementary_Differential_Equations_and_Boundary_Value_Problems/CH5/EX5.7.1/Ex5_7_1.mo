class Ex5_7_1
  /*  Page 275
  Here different values of y can be seem but the final solution is not shown in the example but are given as a power series, so the summation function cannot be implied
  here y is a function of time
  Simuated from t=1 to t=2*/
  Real y(start = 1);
  Real y1(start = 0);
equation
  der(y) = y1;
  der(y1) = (time * y - (3 + time) * y1) / (time * 2 * (1 + time));
end Ex5_7_1;