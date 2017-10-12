class Ex2_5_1
/*Page 80*/
  Real y(start = 0.25);
  parameter Real x = 0.25 / (0.75 * exp(-1.42) + 0.25);
equation
  y = x / (x + (1 - x) * exp(-1 * time));
end Ex2_5_1;