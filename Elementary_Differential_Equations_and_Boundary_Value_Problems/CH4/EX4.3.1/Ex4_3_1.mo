class Ex4_3_1
/* Page 222*/
  Real y(start = 0);
  Real y1(start = 0);
  Real y2(start = 0);
  Real x(start = 0);
equation
  der(y) = y1;
  der(y1) = y2;
  der(y2) = 3 * y2 - 3 * y1 + y + 4 * exp(time);
  x = 2 * exp(time) * (time ^ 3) / 3;
end Ex4_3_1;