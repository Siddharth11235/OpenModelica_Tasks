class Eg7_5_1
parameter Real mu = 1.5;
parameter Integer n = 11;
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
der(x[i])=mu*(y[i] - ((1/3)*(x[i]^3)-x[i]));
der(y[i])=-(1/mu)*x[i];
end for;
end Eg7_5_1;
