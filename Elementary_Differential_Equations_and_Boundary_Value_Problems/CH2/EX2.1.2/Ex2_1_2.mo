class Ex2_1_2
/*Page 33*/
  Real x, y(start = 2);
equation
  der(y) = 2 + time - y / 2;
  x = 2 * time + 2 * exp(-time / 2);
/*x is the final solved equation*/
end Ex2_1_2;
