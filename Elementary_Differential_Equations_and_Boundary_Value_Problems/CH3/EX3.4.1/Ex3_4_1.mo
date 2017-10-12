class Ex3_4_1
  /*  Page 156
  The values of c2 and c2 equals 1
  the graphs are not matching because the values of c1 and c2 need to be calculated for the given values
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=0 to t=2*/
  Real y(start = 1);
  Real y1(start = 1 / 3);
  Real x;
equation
  der(y) = y1;
  der(y1) = (-y1) - y;
  x = exp(-time / 2) * cos(sqrt(3) * time / 2) + exp(-time / 2) * sin(sqrt(3) * time / 2);
end Ex3_4_1;