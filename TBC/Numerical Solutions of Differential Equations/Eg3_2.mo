class Eg3_2
  Real y(start = 1);
  parameter Real h= 0.1;
  parameter Real y0 = 1;
  parameter Real t0 = 0;
  parameter Integer tn = 1;
  parameter Integer size_1 = 11;//tn/h; type conversion issues. Will return and fix type.
  Real t[size_1];
  Real y1[size_1]; 
  equation
  t[1] = t0;
  for i in 2:size_1 loop
  t[i] = t[i-1] + h;
  end for;
  y1[1] = y0;
  y1[2] = 1 + t[2];
  y1[3] = 1 + t[3]+t[3]^2;
  y1[4] =  1 + t[4]+t[4]^2+(2*t[4]^3)/(factorial(3));
  for i in 5:size_1 loop
  y1[i] = y1[i-1] + (h/24)*(55*(y1[i-1] + t[i-1]) - 59*(t[i-2] + y1[i-2]) + 37*(t[i-3] + y1[i-3]) - 9);
  end for;
  der(y) = time+y;
end Eg3_2;