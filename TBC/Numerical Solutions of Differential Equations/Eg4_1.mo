class Eg4_1
  parameter Real h= 0.25;
  parameter Real y0 = 0;
  parameter Real x0 = 2;
  parameter Integer tn = 1;
  parameter Integer size_1 = 5;//tn/h; type conversion issues. Will return and fix type.
  
  Real y1[5]; 
  Real x[5];
  equation
  x[1] = x0;
  for i in 2:size_1 loop
    x[i] = x[i-1] + h;
  end for;
  y1[1] = y0;
  y1[5] = y0;
  for i in 2:size_1-1 loop
    y1[i-1] -2*y1[i] +y1[i+1] + (1/192)*(((2/x[i-1]^2)*y1[i-1] -(1/x[i-1])) + 10*((2/x[i]^2)*y1[i] -(1/x[i])) + ((2/x[i+1]^2)*y1[i+1] -(1/x[i+1])))= 0;
  end for;
 
  
end Eg4_1;