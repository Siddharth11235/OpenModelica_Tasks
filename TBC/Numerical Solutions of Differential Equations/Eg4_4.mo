class Eg4_4
parameter Real h= 1/64;
  parameter Real y0 = 0;
  parameter Real x0 = -1;
  parameter Integer xn = 1;
  parameter Integer size_1 = 65;//tn/h; type conversion issues. Will return and fix type.
  
  Real y1[size_1]; 
  Real x[size_1];
  equation
  x[1] = x0;
  for i in 2:size_1 loop
    x[i] = x[i-1] + h;
  end for;
  y1[1] = y0;
  (6+4*h^4)*y1[1] -8*y1[2] +2*y1[3] = h^4;
  -4*y1[1] + (7+4*h^4)*y1[2] -4*y1[3] +y1[4] = h^4;
  for i in 2:size_1-2 loop
   -y1[i-1] + 2*y1[i] + 0.5*h^2*(1+x[i] + y1[i])^3 =0;
  end for;
  -y1[size_1- 2] + (1+h)*y[size_1-1] + (h^2/2)*((1/6)*(1+ x[size_1 -2] +y1[size_1-2])^3 + (1/3)*(1+ x[size_1 -1] +y1[size_1-1])^3) - h = 0;
end Eg4_4;