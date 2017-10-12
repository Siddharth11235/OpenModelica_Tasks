class Ex5_3_5
/* Page 253*/
  Real y(start = 0);
  Real y1(start = 0.5);
equation
  der(y) = y1;
  der(y1) = (-sin(time) * y1) - y * (1 + time ^ 2);
end Ex5_3_5;