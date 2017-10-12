class Eg6_4_1
Real y(start = 1);
parameter Real lambda = -1;
parameter Real h[2]= {0.2, 0.1};
  parameter Real y0 = asin(1.0)/2;
  parameter Real x0 = 0;
  parameter Integer xn = 2;
  parameter Integer size_1 = 10;//xn/h[1]; type conversion issues. Will return and fix type.
  parameter Integer size_2 = 20;//xn/h[2]; type conversion issues. Will return and fix type.
  Real x1[size_1];
  Real x2[size_2];
  Real y1[size_1]; 
  Real y2[size_2];
 equation
    x1[1] = x0;
    x2[1] = x0;
    y1[1] = y0;
    y2[1] = y0;
  for i in 2:size_1 loop
  x1[i] = x2[i-1] + h[1];
  y1[i] = y1[i-1] + h[1]*(lambda*y1[i-1]);
  end for;
  for i in 2:size_2 loop
  x2[i] = x2[i-1] + h[2];
  y2[i] = y2[i-1] + h[2]*(lambda*y2[i-1]);
  end for;
equation
der(y) = lambda*y;
end Eg6_4_1;