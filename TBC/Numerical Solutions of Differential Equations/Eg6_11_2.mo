class Eg6_11_2
Real y(start = (exp(1)+exp(-1))^(-1));
Real y_d(start = 0.245777);
  parameter Real h= 0.25;
  parameter Real y0 = (exp(1)+exp(-1))^(-1);
  parameter Real y_d0 = 0.245777;
  parameter Real t0 = -1;
  parameter Integer tn = 1;
  parameter Integer size_1 = 9;
  Real y1[size_1];
  Real t[size_1];
  Real y_d1[size_1];
  equation
  y1[1] = y0;
  t[1] = t0;
  for i in 2:size_1 loop
  t[i] = t[i-1] +h;
  y1[1] = y1[i-1] + h*(-(y1[i-1])+ (2*(y_d1[i-1])^2)/y1[i-1]);
  end for;
y_d = der(y);
der(y_d) = -y+ (2*(y_d)^2)/y;
end Eg6_11_2;