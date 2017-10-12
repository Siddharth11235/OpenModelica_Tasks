model Ex1_1_2
/*Page 5*/
  Real p(start = 850);
  parameter Real dim=30;  //days in a month
  parameter Real mice=15;
  parameter Real rate=0.5; //per month  
  /*other graphs can be obtained by changing the values for start*/
equation
  der(p) = rate*p - dim*mice;
end Ex1_1_2;