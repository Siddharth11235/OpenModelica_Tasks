class Ex2_8_1
/*Page 107*/
  Real y(start = 0);
  Real x;
equation
  der(y) = 2 * time + time * 2 * y;
  x = exp(time ^ 2) - 1;
end Ex2_8_1;