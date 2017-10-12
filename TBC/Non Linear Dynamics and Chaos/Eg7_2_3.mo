class Eg7_2_3
parameter Integer n = 11;
Real x[n];
Real y[n];
initial equation
x[1] = -2;
y[1] = -2;
for i in 2:n loop
y[i] = y[i-1] + 4/(n-1);
x[i] = x[i-1] + 4/(n-1);
end for;
equation
der(x) = -x + 4*y;
der(y) = -x - y.^3;
end Eg7_2_3;