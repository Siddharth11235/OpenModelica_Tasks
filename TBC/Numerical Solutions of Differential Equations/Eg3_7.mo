class Eg3_7
  Real y(start = 1);
  Real y_d(start = 0);
  parameter Real h= 0.2;
  parameter Real y0 = 1;
  parameter Real y_d0= 0;
  parameter Real t0 = 0;
  parameter Integer tn = 1;
  parameter Integer size_1 = 6;//tn/h; type conversion issues. Will return and fix type.
  Real y1[6]; 
  Real t[size_1];
  equation
  t[1] = t0;
  for i in 2:size_1 loop
    t[i] = t[i-1] + h;
  end for;
  y1[1] = y0;
  y1[2] = 1 - (h^3)/6;
  for i in 3:size_1 loop
    y1[i] = 2*y1[i-1] -y1[i-2] + (h^2/12)*((-t[i]*y1[i]) + 10*(-t[i-1]*y1[i-1]) + ( -t[i-2]*y1[i-2]));
  end for;
  //y1[4] = y at 0.6
  y_d = der(y);
  der(y_d) = -time*y;
end Eg3_7;