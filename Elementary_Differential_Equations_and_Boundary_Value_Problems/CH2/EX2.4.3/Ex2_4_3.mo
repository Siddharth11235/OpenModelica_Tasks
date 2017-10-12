class Ex2_4_3
/*Page 68*/
  /*Example 1&2 are already solved earlier*/
  Real y(start = 1);
  Real x;
equation
  der(y) = y ^ (1 / 3);
  x = (2 * (time+1.5)/3 ) ^ 1.5;
end Ex2_4_3;