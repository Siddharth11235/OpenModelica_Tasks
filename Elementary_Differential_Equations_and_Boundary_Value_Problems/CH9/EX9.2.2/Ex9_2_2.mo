class Ex9_2_2
  /*  Page 477
  here the constant is considered to be 0
  here y is a function of time
  and x is the solns, also a fn of time
  Simuated from t=0 to t=0.3*/
  Real y(start = 4);
  Real z(start = 4);
  Real x;
equation
  der(y) = (12 - 3 *time*time)/(4 - 2 * y);
  x=time;
  z = 2 + sqrt(time ^ 3 - 12 * time + 4);
/*here the problem is converted to a single dy/dx and not individual der(y) and der(x), and doing those will plot der(y) and der(x) individually wrt time and not wrt each other*/
end Ex9_2_2;
