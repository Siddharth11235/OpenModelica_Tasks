class Eg8_2_1
parameter Real mu = -2;//Any positive value of mu will cause the simulation to fail
parameter Integer n = 11;
Real y[n];
Real x[n];
initial equation
x[1] = -0.8;
y[1] = -0.8;
for i in 2:n loop
x[i] = x[i-1] + 1.6/(n-1);
y[i] = y[i-1] + 1.6/(n-1);
end for;
equation
for i in 1:n loop
der(x[i])=mu*x[i]-y[i]+x[i]*y[i]^2;
der(y[i])=x[i]+mu*y[i]+y[i]^3;
end for;
end Eg8_2_1;