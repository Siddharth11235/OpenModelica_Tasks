class Ex2_3_2
/*Page 52*/
  Real s(start = 2);
  Real x;
  parameter Real r=1; //m
  parameter Real m=2; //kg
  parameter Real So=2;
  /*x is another variable used to match the exact solution*/
equation
  der(s) = s;
  x = So * exp(r * time);
end Ex2_3_2;