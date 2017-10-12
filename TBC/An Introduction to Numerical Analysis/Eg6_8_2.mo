class Eg6_8_2
  Real[3] y(start = {1,1,1});
  
  parameter Real h[3]= {0.5, 0.1, 0.01};
  parameter Real lambda[3] = {-1, -10, -50};
  parameter Real y0 = 1;
  parameter Real x0 = 0;
  parameter Integer xn = 5;
  parameter Integer size_1 = 11;//xn/h[1]; type conversion issues. Will return and fix type.
  parameter Integer size_2 = 51;//xn/h[2]; type conversion issues. Will return and fix type.
  parameter Integer size_3 = 501;//xn/h[3]; type conversion issues. Will return and fix type.
  Real x1[size_1,3];
  Real x2[size_2,3];
  Real x3[size_3,3];
  Real y1[size_1,3]; //
  Real y2[size_2,3];
  Real y3[size_3,3];
 equation
 for j in 1:3 loop
    x1[1,j] = x0;
    x2[1,j] = x0;
    x3[1,j] = x0;
    y1[1,j] = y0;
    y2[1,j] = y0;
    y3[1,j] = y0;
  for i in 2:size_1 loop
  x1[i,j] = x1[i-1,j] + h[1];
  y1[i,j] = y1[i-1,j] + h[1]*(lambda[j]*y1[i-1,j] + (1 - lambda[j])*cos(x1[i-1,j])-(1 + x1[i-1,j])*sin(x1[i-1,j]));
  end for;
  for i in 2:size_2 loop
  x2[i,j] = x2[i-1,j] + h[2];
  y2[i,j] = y2[i-1,j] + h[1]*(lambda[j]*y2[i-1,j] + (1 - lambda[j])*cos(x2[i-1,j])-(1 + x2[i-1,j])*sin(x2[i-1,j]));
  end for;
  for i in 2:size_3 loop
  x3[i,j] = x3[i-1,j] + h[3];
  y3[i,j] = y3[i-1,j] + h[1]*(lambda[j]*y3[i-1,j] + (1 - lambda[j])*cos(x3[i-1,j])-(1 + x3[i-1,j])*sin(x3[i-1,j]));
  end for;
  der(y[j]) = (lambda[j]*y[j] + (1 - lambda[j])*cos(time)-(1 + time)*sin(time));//For comparison
  end for;

 
end Eg6_8_2;