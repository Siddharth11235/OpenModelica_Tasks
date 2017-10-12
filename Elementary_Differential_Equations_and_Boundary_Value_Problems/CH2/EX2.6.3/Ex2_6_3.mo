class Ex2_6_3
/*Page 93*/
  Real y(start = 2);
equation
  der(y) = ((-3 * time * y) - y ^ 2) / (time ^ 2 + y * time);
/*from time t=1 to t=2 and intinail condition as y=2*/
end Ex2_6_3;