class Ex6_1_3
  /*  Page 295
  the values of p is taken to be 2
  we chose the constants in such a way that they give the same graph
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=1 to t=2*/
  Real y(start = -1);
  Real x;
equation
  der(y) = time ^ (-2);
  x = -1 / time;
end Ex6_1_3;