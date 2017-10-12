class Ex6_2_1
  /*  Page 305
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=0 to t=1*/
  Real y(start = 2);
  Real y1(start = 1);
  Real x;
equation
  der(y) = y1;
  der(y1) = (-y) + sin(2 * time);
  x = 2 * cos(time) + 5 * sin(time) / 3 - sin(2 * time) / 3;
end Ex6_2_1;