class Ex4_2_4
/* Page 219*/
  Real y(start = 1);
  Real y1(start = 0);
  Real y2(start = 2);
  Real y3(start = -1);
  Real x(start = 1);
equation
  der(y) = y1;
  der(y1) = y2;
  der(y2) = y3;
  der(y3) = -y;
  x = exp(time / sqrt(2)) * (cos(time / sqrt(2)) + sin(time / sqrt(2))) + exp(-time / sqrt(2)) * (cos(time / sqrt(2)) + sin(time / sqrt(2)));
/*the graphs do not match because values of constants c1,c2,c3,c4 are not being evaluated*/
end Ex4_2_4;