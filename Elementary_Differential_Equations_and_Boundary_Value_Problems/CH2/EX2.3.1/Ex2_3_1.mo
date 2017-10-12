class Ex2_3_1
/*Page 50*/
  Real q(start = 30);
  Real x;
  parameter Real r=1;
  parameter Real Qo=30;
  /*x is another variable used to match the exact solution*/
equation
  der(q) = r / 4 - q*r / 100;
  x = 25 + (Qo-25) * exp(-r*time / 100);
end Ex2_3_1;