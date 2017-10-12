class Ex2_7_1
/*Page 98*/
  Real y(start = 1);
  Real x;
equation
  der(y) = 3 + exp(-1 * time) - 0.5 * y;
  x = 6 - 2 * exp(-time) - 3 * exp(-time / 2);
end Ex2_7_1;