class Eg8_3_1
parameter Real a = 10;
parameter Real b = 3;
parameter Integer n = 11;
Real y[n];
Real x[n];
initial equation
x[1] = -0;
y[1] = 0;
for i in 2:n loop
x[i] = x[i-1] + 7/(n-1);
y[i] = y[i-1] + 7/(n-1);
end for;
equation
for i in 1:n loop
der(x[i])=a-x[i]-((4*x[i]*y[i])/(1+x[i]^2));
der(y[i])=(b*x[i])*(1-(y[i]/(1+x[i]^2)));
end for;
end Eg8_3_1;