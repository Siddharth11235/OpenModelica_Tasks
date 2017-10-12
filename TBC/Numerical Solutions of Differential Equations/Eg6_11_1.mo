class Eg6_11_1
Real y(start = 0);
Real y_d;

equation
y_d = der(y);
der(y_d) = -2*y;
end Eg6_11_1;