class Eg8_1_3
parameter Real mu = -2;//Any positive value of mu will cause the simulation to fail
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
der(x[i])=mu*x[i]+y[i]+sin(x[i]);
der(y[i])=x[i] - y[i];
end for;
end Eg8_1_3;