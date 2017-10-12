class Eg6_10_1
  Real y(start = 1);
  parameter Real h= 0.0625;
  parameter Real y0 = 1;
  parameter Real t0 = 0;
  parameter Integer tn = 10;
  parameter Integer size_1 = 161;//tn/h; type conversion issues. Will return and fix type.
  Real t[size_1];
  Real y1[size_1]; //
    equation
  y1[1] = y0;
  t[1] = t0;
  for i in 2:size_1 loop
  t[i] = t[i-1] + 0.1;
  y1[i] = y1[i-1] - h*(y1[i-1]^2)+ h^2*(y1[i-1]^3) ;
  end for;
  der(y) = -y^2;//For comparison
  
  
end Eg6_10_1;