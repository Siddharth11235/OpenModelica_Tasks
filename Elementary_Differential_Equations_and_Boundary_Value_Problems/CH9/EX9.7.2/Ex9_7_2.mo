class Ex9_7_2
  /*  Page 526
  here u is a function of time
  and mu equals 1
  Simuated from t=0 to t=1*/
  Real u(start = 1);
  Real u1;
equation
  der(u) = u1;
  der(u1) = u1 - u1 * u * u - u;
end Ex9_7_2;