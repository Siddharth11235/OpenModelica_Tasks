class Ex2_7_3
/*Page 101*/
  Real y(start = 1);
  Real x;
equation
  der(y) = 4 - time + 2 * y;
  x = (-7 / 4) + time / 2 + 11 * exp(time * 2) / 4;
end Ex2_7_3;