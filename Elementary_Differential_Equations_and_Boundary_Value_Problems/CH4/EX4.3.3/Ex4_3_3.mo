class Ex4_3_3
/* Page 224*/
  Real y(start = 0);
  Real y1(start = 0);
  Real y2(start = 1);
  Real x(start = 0);
equation
  der(y) = y1;
  der(y1) = y2;
  der(y2) = 4 * y1 + time + 3 * cos(time) + exp(-2 * time);
  x = exp(-2 * time) * (time / 8) - time ^ 2 / 8 - 0.6 * sin(time);
/*the graph plotted is not the same as the graph solved by differential equation because the value of constants entered in the soln and the diff. eqn are different*/
end Ex4_3_3;