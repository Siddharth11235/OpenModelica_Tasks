class Ex5_5_2
  /*  Page 262
  the values of c1 and c2 are taken to be half, and the graph drawn with this simulator is not the same as the graph obtained from plotting x, we chose the constants in such a way that they give the same graph
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=1-t=2*/
  Real y(start = 1);
  Real y1(start = -1);
  Real x;
equation
  der(y) = y1;
  der(y1) = ((-4 * y) - 5 * time * y1) / time ^ 2;
  x = (1 + log(time)) / time ^ 2;
end Ex5_5_2;