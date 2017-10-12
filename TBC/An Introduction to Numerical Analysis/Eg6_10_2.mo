class Eg6_10_2
  Real y(start = 1);
  parameter Real h= 0.25;
  parameter Real y0 = 1;
  parameter Real t0 = 0;
  parameter Integer tn = 10;
  parameter Integer size_1 = 41;//tn/h; type conversion issues. Will return and fix type.
  Real t[size_1];
  Real y1[size_1]; 
  Real K1[size_1-1];
  Real K2[size_1-1];
  Real K3[size_1-1];
  Real K4[size_1-1];
  equation
  y1[1] = y0;
  t[1] = t0;
  for i in 2:size_1 loop
  t[i] = t[i-1] + h;
  K1[i-1] = h*((1/(1+t[i-1]^2)) - 2*y1[i-1]^2);
  K2[i-1] = h*((1/(1+(t[i-1]+h/2)^2)) - 2*(y1[i-1]+K1[i-1])^2); 
  K3[i-1] = h*((1/(1+(t[i-1]+h/2)^2)) - 2*(y1[i-1]+K2[i-1]/2)^2);
  K4[i-1] = h*((1/(1+(t[i-1]+h/2)^2)) - 2*(y1[i-1]+K3[i-1])^2);
  y1[i] = y1[i-1] + (1/6)*(K1[i-1] + 2*K2[i-1] + 2*K3[i-1] +K4[i-1]);
  end for;
  der(y) = (1/(1+time^2)) - 2*y^2;//For comparison
end Eg6_10_2;