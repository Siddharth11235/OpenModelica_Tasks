class Ex4_2_2
/*Page 217*/
  Real y(start = 3.5);
  Real y1(start = -4);
  Real y2(start = 2.5);
  Real y3(start = -2);
  Real x(start = 3.5);
equation
  der(y) = y1;
  der(y1) = y2;
  der(y2) = y3;
  der(y3) = y;
//  x = 1 * exp(time) / 32 + 95 * exp(-time) / 32 + cos(time) / 2 - 17 * sin(time) / 16;
  x=3*exp(-time)+cos(time)/2-sin(time);
end Ex4_2_2;