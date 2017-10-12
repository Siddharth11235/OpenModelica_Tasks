class Eg1_1
Real y_1(start = 1);
Real y_2(start = 1);

parameter Real h = 0.1;
  parameter Real lambda[2] = {-1,1};
  parameter Real y0 = 1;
  parameter Real x0 = 0;
  parameter Integer xn = 2;
  parameter Integer size_1 = 20;//xn/h; type conversion issues. Will return and fix type.
  Real x[size_1];
    Real y1[size_1]; //
  Real y2[size_1];
 equation
    x[1] = x0;
    y1[1] = y0;
    y2[1] = y0;
  for i in 2:size_1 loop
  x[i] = x[i-1] + h;
  y1[i] = y1[i-1] + h*(y1[i-1]*lambda[1]);
  end for;
  for i in 2:size_1 loop
  y2[i] = y2[i-1] + h*(y2[i-1]*lambda[2]);
  end for;
//For comparison
  der(y_1) = y_1*lambda[1];
  der(y_2) = y_2*lambda[2];
end Eg1_1;