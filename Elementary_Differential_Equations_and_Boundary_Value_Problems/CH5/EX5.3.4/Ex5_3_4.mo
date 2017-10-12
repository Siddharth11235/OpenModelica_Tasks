class Ex5_3_4
/* Page 252*/
  Real y(start = 0);
  Real y1(start = 1);
equation
  der(y) = y1;
  der(y1) = ((-2 * time * y1) - 4 * y * time ^ 2) / (1 + time ^ 2);
end Ex5_3_4;