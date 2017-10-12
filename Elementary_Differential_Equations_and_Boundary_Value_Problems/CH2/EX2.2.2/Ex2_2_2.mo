class Ex2_2_2
/*Page 43*/
  Real y(start = -1);
  Real x;
  /*x is another variable used to match the exact solution*/
equation
  der(y) = (3 * time * time + 4 * time + 2) / (2 * y - 2);
  x = 1 - sqrt(time ^ 3 + 2 * time ^ 2 + 2 * time + 4);
end Ex2_2_2;