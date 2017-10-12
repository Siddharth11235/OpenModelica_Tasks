class Ex1_1_1
/*Page 4*/
  Real v(start = 0);
  parameter Real g=9.8;
  parameter Real y=2;
  parameter Real m=10;
  /*other graphs can be obtained by changing the values for start*/
equation
  der(v) = g - v*y/m;
end Ex1_1_1;