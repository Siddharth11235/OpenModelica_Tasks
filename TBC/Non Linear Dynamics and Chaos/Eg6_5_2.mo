class Eg6_5_2
parameter Integer n = 17;
Real x[n];
Real y[n];
initial equation
x[1] = -4;
y[1] = -4;
for i in 2:n loop
x[i] = x[i-1] + (8/(n-1));
y[i] = y[i-1] + (8/(n-1));
end for;
equation
der(x) = y;
der(y) = x - x.^3;
end Eg6_5_2;