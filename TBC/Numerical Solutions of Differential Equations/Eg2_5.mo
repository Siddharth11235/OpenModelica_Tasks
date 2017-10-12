class Eg2_5
Real y(start = 1);
Real y_d(start = 0);
  parameter Real h= 0.1;
  parameter Real y0 = 1;
  parameter Real y_d0 = 0;
  parameter Real t0 = 0;
  parameter Integer tn = 1;
  parameter Integer size_1 = 11;//tn/h; type conversion issues. Will return and fix type.
  Real t[size_1];
  Real y1[size_1]; 
  Real y_d1[size_1];
  Real K1[size_1-1];
  Real K2[size_1-1];
  equation
  y1[1] = y0;
  y_d1[1] = y_d0;
  t[1] = t0;
  for i in 2:size_1 loop
  t[i] = t[i-1] + h;
  K1[i-1] = ((h^2)/2)*((1+t[i-1]^2)*y1[i-1]);
  K2[i-1] = ((h^2)/2)*((1+(t[i-1]+(2/3)*h)^2)*(y1[i-1]+ (2/3)*h*y1[i-1] + (4/9)*K1[i-1]));
  y1[i] = y1[i-1] + h*y_d1[i-1] + (1/2)*(K1[i-1] + K2[i-1]);
  y_d1[i] = y_d1[i-1] + (1/(2*h))*(K1[i-1] + 3*K2[i-1]);
  end for;
  //For comparison
  der(y) = y_d; 
  der(y_d) = (1+time^2)*y;
end Eg2_5;