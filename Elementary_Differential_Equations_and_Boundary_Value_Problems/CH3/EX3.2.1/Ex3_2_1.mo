class Ex3_2_1
  /*  Page 139
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=1 to t=2*/
  Real y(start = 2);
  Real y1(start = 1);
equation
  der(y) = y1;
  der(y1) = ((-time * y1) + (time + 3) * y) / (time ^ 2 - 3 * time);
end Ex3_2_1;