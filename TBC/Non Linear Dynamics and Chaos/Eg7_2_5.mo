class Eg7_2_5
parameter Integer n = 21;
Real y[n];
Real x[n];
initial equation
x[1] = -10;
y[1] = -10;
for i in 2:n loop
x[i] = x[i-1] + 20/(n-1);
y[i] = y[i-1] + 20/(n-1);
end for;
equation
for i in 1:n loop
der(x[i]) = y[i];
der(y[i]) = -x[i] -y[i] + x[i]^2 + y[i]^2;
end for;
end Eg7_2_5;