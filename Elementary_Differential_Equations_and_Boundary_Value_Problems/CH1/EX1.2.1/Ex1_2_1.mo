class Ex1_2_1
/*Page 9*/
  Real psol;
  Real p(start=950);
  parameter Real rate=0.5; //per month 
  parameter Real k=900;   
equation
  der(p)=rate*(p-k);
  psol = k + 50*exp(time / 2);
end Ex1_2_1;