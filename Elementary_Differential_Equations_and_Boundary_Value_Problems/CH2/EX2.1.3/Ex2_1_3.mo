class Ex2_1_3
/*Page 35*/
  Real x;
  Real y(start = -3/4);
equation
  der(y) = 2 * y + 4 - time;
  x = (-7 / 4) + time / 2 + exp(2 * time);
/*x is the final solved equation*/
end Ex2_1_3;