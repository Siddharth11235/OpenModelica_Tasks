class Ex3_8_3
  /*  Page 194
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=0 to t=2*/
  Real u(start = 2);
  Real u1(start = 0);
  Real x;
equation
  der(u) = u1;
  der(u1) = (-0.125 * u1) - u;
  x = 32 * exp(-time / 16) * cos(time * sqrt(255) / 16 - 0.06254) / sqrt(255);
end Ex3_8_3;