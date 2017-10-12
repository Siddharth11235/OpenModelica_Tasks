class Eg3_3
  Real y(start = 1);
  parameter Real h= 0.1;
  parameter Real y0 = 1;
  parameter Real t0 = 0;
  parameter Real p0 = 0;
  parameter Real c0 = 0;
  parameter Real m0 = 0;
  parameter Integer tn = 1;
  parameter Integer size_1 = 11;//tn/h; type conversion issues. Will return and fix type.
  Real t[size_1];
  Real y1[size_1]; 
  Real p[size_1-1];
  Real c[size_1-1];
  Real m[size_1-1];
  
  equation
  t[1] = t0;
  t[2] = t[1] + h;
  y1[1] = y0;
  y1[2] = 1 + t[2];
  p[1] = p0;
  c[1] = c0;
  m[1] = m0;
  for i in 3:size_1 loop
  t[i] = t[i-1] + h;
  p[i-1] = y1[i-1] + (h/2)*((t[i-1] + y1[i-1])+(t[i-2] + y1[i-2]));
  m[i-1] = p[i-1] - (5/6)*(p[i-2] - c[i-2]);
  c[i-1] = y1[i-1] + (h/2)*((t[i] + m[i-1]) +(t[i-1] + y1[i-1]));
  y1[i] = c[i-1] + (1/6)*(p[i-1] -c[i-1]);
  end for;
  der(y) = time+y; //For comparison
end Eg3_3;