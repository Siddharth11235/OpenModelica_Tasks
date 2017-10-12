class Ex3_6_5
  /*  Page 174
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=0 to t=2*/
  Real y(start = 0);
  Real y1(start = 0);
  Real x;
equation
  der(y) = y1;
  der(y1) = (-4 * y) + 3 * cos(2 * time);
  x = 3 * time * sin(2 * time) / 4;
end Ex3_6_5;