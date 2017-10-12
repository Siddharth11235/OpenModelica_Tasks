class Ex2_4_4
/*Page 70*/
  Real y(start = 1);
  Real x;
equation
  der(y) = y ^ 2;
  x = 1 / (1 - time);
end Ex2_4_4;