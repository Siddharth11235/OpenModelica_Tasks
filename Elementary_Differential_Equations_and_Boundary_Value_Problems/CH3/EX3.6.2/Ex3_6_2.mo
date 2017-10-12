class Ex3_6_2
  /*  Page 172
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=0 to t=2*/
  Real y(start = 3 / 17);
  Real y1(start = -5 / 17);
  Real x;
equation
  der(y) = y1;
  der(y1) = 4 * y + 3 * y1 + sin(time) * 2;
  x = (-5 * sin(time) / 17) + 3 * cos(time) / 17;
end Ex3_6_2;