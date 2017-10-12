class Ex3_6_4
  /*  Page 174
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=0 to t=2*/
  Real y(start = 10 / 13 + 3 / 17 - 0.5);
  Real y1(start = 14 / 13 - 5 / 17 - 1);
  Real x;
equation
  der(y) = y1;
  der(y1) = 4 * y + 3 * y1 - 8 * exp(time) * cos(2 * time) + 3 * exp(2 * time) + 2 * sin(time);
  x = 10 * exp(time) * cos(2 * time) / 13 + 2 * exp(time) * sin(2 * time) / 13 - 5 * sin(time) / 17 + 3 * cos(time) / 17 - exp(2 * time) / 2;
end Ex3_6_4;