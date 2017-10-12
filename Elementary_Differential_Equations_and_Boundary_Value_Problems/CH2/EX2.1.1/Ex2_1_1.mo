class Ex2_1_1
/*Page 31*/
  Real x, y(start = 0.5);
equation
  der(y) = 3 - 2 * y;
  x = 1.5 - exp(-2 * time);
/*x is the final solved equation*/
end Ex2_1_1;