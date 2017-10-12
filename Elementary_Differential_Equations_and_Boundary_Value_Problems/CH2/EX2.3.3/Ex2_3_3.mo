class Ex2_3_3
/*Page 55*/
  Real q(start = 0);
  Real x;
  parameter Real m=10;
  parameter Real y=2; //at time=0
  /*x is another variable used to match the exact solution*/
equation
  der(q) = m +(m/y)*sin(y * time) - q / y;
  x = 20 - 40 * cos(y * time) / 17 + 10 * sin(y * time) / 17 - 300 * exp(-time / y) / 17;
end Ex2_3_3;