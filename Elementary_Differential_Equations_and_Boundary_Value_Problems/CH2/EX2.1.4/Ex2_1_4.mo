class Ex2_1_4
/*Page 36
  simulated from t=1 to t=2*/
  Real y(start=2);
  Real x;
equation
  der(y) = 4 * time - 2 * y / time;
  x = time ^ 2 + 1 / time ^ 2;
end Ex2_1_4;