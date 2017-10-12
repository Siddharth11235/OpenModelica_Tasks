class Ex6_1_2
  /*  Page 294
  we chose the constants in such a way that they give the same graph
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=1 to t=2*/
  Real y(start = 0);
  Real x;
equation
  der(y) = 1 / time;
  x = log(time);
end Ex6_1_2;