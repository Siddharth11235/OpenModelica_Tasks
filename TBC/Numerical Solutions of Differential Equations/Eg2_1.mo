class Eg2_1
  Real y(start = 1);
  parameter Real h= 0.1;
  Integer p(start = 0);
  parameter Real y0 = 1;
  parameter Real t0 = 0;
  parameter Integer tn = 1;
  parameter Integer size_1 = 11;//tn/h; type conversion issues. Will return and fix type.
  Real t[size_1];
  Real y1[size_1]; //
 
  algorithm
  while (2*exp(1)/factorial(p+1)) > (5*10e-13) loop
  p := p+1;
  end while;
  equation
  y1[1] = y0;
  t[1] = t0;
  for i in 2:size_1 loop
  t[i] = t[i-1] + 0.1;
  y1[i] = 1 + t[i]+t[i]^2 + taylor_sum(p,t[i]);
  end for;
  der(y) = time + y;
end Eg2_1;