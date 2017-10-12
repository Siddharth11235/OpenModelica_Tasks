class Ex2_6_2
/*Page 92*/
/*simulate from t=0 to t=0.25*/
  Real y(start = 1);
equation
  der(y) = ((-y * cos(time)) - 2 * time * exp(y)) / (time ^ 2 * exp(y) - 1 + sin(time));
end Ex2_6_2;