class Eg5_2_3
parameter Integer n = 11;
Real x[n];
Real y[n];
initial equation
x[1] = -14;
y[1] = -25;
for i in 2:n loop
x[i] = x[i-1] + (28/(n-1));
y[i] = y[i-1] + (50/(n-1));
end for;
equation
der(x) = -x-y;
der(y) = -2*y;
end Eg5_2_3;