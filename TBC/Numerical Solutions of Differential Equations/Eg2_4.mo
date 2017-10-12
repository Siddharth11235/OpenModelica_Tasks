class Eg2_4
Real y(start = 1);
Real x(start = 0);
  parameter Real h= 0.1;
  parameter Real y0 = 1;
  parameter Real x0 = 0;
  parameter Real t0 = 0;
  parameter Integer tn = 1;
  parameter Integer size_1 = 11;//tn/h; type conversion issues. Will return and fix type.
  Real t[size_1];
  Real y1[size_1];
  Real x1[size_1]; 
  Real K11[size_1-1];
  Real K12[size_1-1];
  Real K21[size_1-1];
  Real K22[size_1-1];
  equation
  y1[1] = y0;
  x1[1] = x0;
  t[1] = t0;
  for i in 2:size_1 loop
  t[i] = t[i-1] + h;
  K11[i-1] = h*(-x1[i-1]);
  K12[i-1] = h*(-(x1[i-1]+K11[i-1]/2));
  K21[i-1] = h*(y1[i-1]);
  K22[i-1] = h*(y1[i-1]+K21[i-1]/2);
  y1[i] = y1[i-1] + (1/2)*(K11[i-1] + K12[i-1]);
  x1[i] = x1[i-1] + (1/2)*(K21[i-1] + K22[i-1]);
  
  end for;
  //For comparison
  der(x) = y; 
  der(y) = -x;
end Eg2_4;