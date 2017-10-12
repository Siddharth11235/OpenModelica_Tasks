class Ex2_2_3
/*Page 44*/
  Real y(start = 1);
  Real x;
  /*x is another variable used to match the exact solution*/
equation
  der(y) = y * cos(time) / (2 * y * y + 1);
  x = (sin(time) + 1 - log(x)) ^ 0.5;
end Ex2_2_3;