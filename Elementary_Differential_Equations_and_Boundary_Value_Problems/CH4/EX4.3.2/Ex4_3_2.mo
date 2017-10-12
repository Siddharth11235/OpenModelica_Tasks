class Ex4_3_2
/* Page 223*/
  Real y(start = 0);
  Real y1(start = 1);
  Real y2(start = 2);
  Real y3(start = 3);
  Real x(start = 0);
equation
  der(y) = y1;
  der(y1) = y2;
  der(y2) = y3;
  der(y3) = (-2 * y2) - y + 3 * sin(time) - 5 * cos(time);
  x = time ^ 2 * ((-3 * sin(time) / 8) + 5 * cos(time) / 8);
/*the graph plotted is not the same as the graph solved by differential equation because the value of constants entered in the soln and the diff. eqn are different*/
end Ex4_3_2;