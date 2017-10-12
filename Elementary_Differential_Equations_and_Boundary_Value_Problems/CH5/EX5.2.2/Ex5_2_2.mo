class Ex5_2_2
/* Page 243*/
  Real y(start = 1);
  Real y1(start = 0);
equation
  der(y) = y1;
  der(y1) = y * time;
end Ex5_2_2;