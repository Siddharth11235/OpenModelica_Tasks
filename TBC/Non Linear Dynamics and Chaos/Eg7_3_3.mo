class Eg7_3_3
parameter Integer n = 14;
parameter Real a = 0.08;
parameter Real b = 0.6;
Real x[n];
Real y[n];
initial equation
x[1] = -1;
y[1] = -1;
for i in 2:n loop
x[i] = x[i-1] + 5/(n-1);
y[i] = y[i-1] + 5/(n-1);
end for;
equation
for i in 1:n loop
der(x[i])=-x[i]+ a*y[i]+(x[i]^2)*y[i];
der(y[i])=b- a.*y[i]-((x[i].^2).*y[i]);
end for;
end Eg7_3_3;