class Ex3_7_1
  /*  Page 180
  here the value of both the constants are assumed something, so the graphs will not match , for the graphs to match we need to put the right values for constants c1 and c2
  for mathing these graphs the value of c1 and c2 need to be calculated
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=1 to t=2*/
  Real y(start = 2.11);
  Real y1(start = 0.75);
  Real x;
equation
  der(y) = y1;
  der(y1) = (-4 * y) + 3 / sin(time);
  x = 3 * sin(time) + cos(2 * time) + sin(2 * time) + 3 * log(1 / sin(time) - cos(time) / sin(time)) / 2;
end Ex3_7_1;