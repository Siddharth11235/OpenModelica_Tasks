class Ex1_1_3
/*Page 6*/
  Real p(start = 900);
  parameter Real k=900;
  parameter Real rate=0.5; //per month  
  /*other graphs can be obtained by changing the values for start*/
equation
  der(p) = rate*p - k*rate;
end Ex1_1_3;