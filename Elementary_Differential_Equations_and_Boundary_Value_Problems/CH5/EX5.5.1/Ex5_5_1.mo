class Ex5_5_1
  /*  Page 261
  the values of c1 and c2 are taken to be half, and the graph drawn with this simulator is not the same as the graph obtained from plotting x, we chose the constants in such a way that they give the same graph
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=1-t=2*/
  Real y(start = 1);
  Real y1(start = -0.25);
  Real x;
equation
  der(y) = y1;
  der(y1) = (y - 3 * time * y1) / (2 * time ^ 2);
  x = sqrt(time / 4) + 1 / (2 * time);
end Ex5_5_1;