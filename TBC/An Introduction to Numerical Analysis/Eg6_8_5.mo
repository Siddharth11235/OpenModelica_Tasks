class Eg6_8_5
Real y[3] (start = {1,1,1});
parameter Real h= 0.1;
  parameter Real lambda[3] = {-1, -10, -50};
  parameter Real y0 = 1;
  parameter Real x0 = 0;
  parameter Integer xn = 5;
  parameter Integer size_1 = 51;//xn/h[1]; type conversion issues. Will return and fix type.
  parameter Integer size_2 =  51;//xn/h[2]; type conversion issues. Will return and fix type.
  parameter Integer size_3 = 51;//xn/h[3]; type conversion issues. Will return and fix type.
  Real x1[size_1];
  Real x2[size_2];
  Real x3[size_3];
  Real y1[size_1]; //
  Real y2[size_2];
  Real y3[size_3];
 equation
    x1[1] = x0;
    x2[1] = x0;
    x3[1] = x0;
    y1[1] = y0;
    y2[1] = y0;
    y3[1] = y0;
  for i in 2:size_1 loop
  x1[i] = x1[i-1] + h;
  y1[i] = y1[i-1] + h*(lambda[1]*y1[i-1] + (1 - lambda[1])*cos(x1[i-1])-(1 + x1[i-1])*sin(x1[i-1]) + (lambda[1]*y1[i] + (1 - lambda[1])*cos(x1[i])-(1 + x1[i])*sin(x1[i])))/2;
  end for;
  for i in 2:size_2 loop
  x2[i] = x2[i-1] + h;
  y2[i] = y2[i-1] + h*(lambda[2]*y2[i-1] + (1 - lambda[2])*cos(x2[i-1])-(1 + x2[i-1])*sin(x2[i-1]) +( lambda[2]*y2[i] + (1 - lambda[2])*cos(x2[i])-(1 + x2[i])*sin(x2[i])))/2;
  end for;
  for i in 2:size_3 loop
  x3[i] = x3[i-1] + h;
  y3[i] = y3[i-1] +h*(lambda[3]*y3[i-1] + (1 - lambda[3])*cos(x3[i-1])-(1 + x3[i-1])*sin(x3[i-1]) +( lambda[3]*y3[i] + (1 - lambda[3])*cos(x3[i])-(1 + x3[i])*sin(x3[i])))/2;
  end for;
  for i in 1:3 loop
  der(y[i]) = (lambda[i]*y[i] + (1 - lambda[i])*cos(time)-(1 + time)*sin(time));//For comparison
  end for;
end Eg6_8_5;
