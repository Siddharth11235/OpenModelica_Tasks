class Eg4_3
  parameter Real h= 0.5;
  parameter Real y0 = 1;
  parameter Real yinf = 0;
  parameter Real x0 = 2;
  parameter Integer tn = 1;
  parameter Integer size_1 = 5;
  Real x[size_1];
  Real y1[size_1];
  equation
 x[1] = x0;
  for i in 2:size_1 loop
    x[i] = x[i-1] + h;
  end for;
  y1[1] = y0;
  y1[5] = yinf;
  for i in 2:size_1-1 loop
    -(y1[i-1] -2*y1[i] + y1[i+1])/(h^2) -2*(y1[i+1] -y1[i-1])/(2*h) + 2*y1[i]= exp(-2*x[i]);
  end for;
end Eg4_3;