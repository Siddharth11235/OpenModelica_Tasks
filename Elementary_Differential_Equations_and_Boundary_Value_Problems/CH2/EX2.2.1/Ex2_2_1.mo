class Ex2_2_1
/*Page 41*/
/*simulate from t=1 to t=1.25*/
  Real x;
  Real y(start=0.3473);
equation
  der(y) = time ^ 2 / (1 - y * y);
  x^3 - (3 * x)= - time^3;
end Ex2_2_1;