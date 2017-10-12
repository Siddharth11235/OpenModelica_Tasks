class Ex6_1_1
  /*  Page 294
  the values of c is taken to be 2, and the graph drawn with this simulator is not the same as the graph obtained from plotting x, we chose the constants in such a way that they give the same graph
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=0 to t=1*/
  Real y(start = 1);
  Real x(start = 1);
equation
  der(y) = exp(2 * time);
  x = exp(time * 2) / 2 + 0.5;
end Ex6_1_1;