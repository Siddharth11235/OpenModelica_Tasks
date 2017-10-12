class Ex4_2_1
/* Page 215*/
  Real y(start = 1);
  Real y1(start = 0);
  Real y2(start = -2);
  Real y3(start = -1);
  Real x;
equation
  der(y) = y1;
  der(y1) = y2;
  der(y2) = y3;
  der(y3) = (-6 * y) + y1 + 7 * y2 - y3;
  x = 11 * exp(time) / 8 + 5 * exp(-time) / 12 - 2 * exp(2 * time) / 3 - 1 * exp(-3 * time) / 8;
end Ex4_2_1;