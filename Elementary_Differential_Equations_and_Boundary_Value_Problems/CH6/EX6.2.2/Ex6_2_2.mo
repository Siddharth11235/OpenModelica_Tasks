class Ex6_2_2
  /*  Page 306
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=0 to t=1*/
  Real y(start = 0);
  Real y1(start = 1);
  Real y2;
  Real y3;
  Real x;
equation
  der(y) = y1;
  der(y1) = y2;
  der(y2) = y3;
  der(y3) = y;
  x = sinh(time) / 2 + sin(time) / 2;
end Ex6_2_2;