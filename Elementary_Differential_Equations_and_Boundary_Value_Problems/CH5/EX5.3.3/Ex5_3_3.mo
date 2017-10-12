class Ex5_3_3
/* Page 252*/
  Real y(start = 0);
  Real y1(start = 1);
  Real x;
equation
  der(y) = y1;
  der(y1) = (2 * time * y1 - 2 * y) / (1 - time ^ 2);
  x = time;
end Ex5_3_3;