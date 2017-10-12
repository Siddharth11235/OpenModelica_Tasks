class Ex3_5_3
  /*  Page 166
  here the value of constants are 1 each
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=1 to t=2*/
  Real y(start = 5 / 3);
  Real y1(start = -2 / 3);
  Real x;
equation
  der(y) = y1;
  der(y1) = (y - 3 * time * y1) / (2 * time ^ 2);
  x = 2 * time ^ 0.5 / 3 + 1 / time;
end Ex3_5_3;