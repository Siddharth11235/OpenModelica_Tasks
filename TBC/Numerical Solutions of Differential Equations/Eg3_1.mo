class Eg3_1
  Real y(start = 1);
  parameter Real h= 0.1;
  parameter Real y0 = 1;
  parameter Real t0 = 0;
  parameter Integer tn = 1;
  parameter Integer size_1 = 11;//tn/h; type conversion issues. Will return and fix type.
  Real t[size_1];
  Real y1[size_1]; 
  equation
  y1[1] = y0;
  t[1] = t0;
  for i in 2:size_1 loop
  t[i] = t[i-1] + h;
  end for;
  y1[2] = y1[1] -h*y1[1]^2 + h^2*y1[1]^3 - h^3*y1[1]^4;
  y1[3] =  y1[2] -h*y1[2]^2 + h^2*y1[2]^3 - h^3*y1[2]^4;
  for i in 4:size_1 loop
  y1[i] = y1[i-1] + (h/12)*(23*(-y1[i-1]^2) - 16*(-y1[i-2]^2) + 5* (-y1[i-3]^2));
  end for;
  der(y) = -y^2;
end Eg3_1;