class Ex5_5_3
  /*  Page 263
  the values of c1 and c2 are taken to be 1, and the graph drawn with this simulator is not the same as the graph obtained from plotting x, we chose the constants in such a way that they give the same graph
  here y is a function of time
  and x is the soln, also a fn of time
  Simuated from t=1 to t=2*/
  Real y(start = 1);
  Real y1(start = 1);
  Real x;
equation
  der(y) = y1;
  der(y1) = ((-y) - time * y1) / time ^ 2;
  x = cos(log(time)) + sin(log(time));
end Ex5_5_3;