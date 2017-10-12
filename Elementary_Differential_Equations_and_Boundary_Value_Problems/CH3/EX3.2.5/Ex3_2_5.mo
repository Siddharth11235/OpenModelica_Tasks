class Ex3_2_5
  /*  Page 143
  The values of c2 and c2 equals 1
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=1 to t=2*/
  Real y(start = 2);
  Real y1(start = -0.5);
  Real x;
equation
  der(y) = y1;
  der(y1) = ((-3 * time * y1) + y) / (2 * time ^ 2);
  x = time ^ 0.5 + 1 / time;
end Ex3_2_5;