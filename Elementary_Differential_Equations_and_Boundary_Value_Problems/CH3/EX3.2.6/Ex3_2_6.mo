class Ex3_2_6
  /*  Page 144
  The values of c2 and c2 equals 1
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=0 to t=2*/
  Real y(start = 1);
  Real y1(start = 1);
  Real x;
equation
  der(y) = y1;
  der(y1) = y;
  x = cosh(time) + sinh(time);
end Ex3_2_6;