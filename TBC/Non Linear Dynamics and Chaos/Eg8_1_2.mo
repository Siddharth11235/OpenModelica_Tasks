class Eg8_1_2
parameter Real mu = -4;
parameter Integer n = 11;
Real y[n];
Real x[n];
Real y1[n];
Real y2[n];
initial equation
x[1] = -10;
y[1] = -10;
for i in 2:n loop
x[i] = x[i-1] + 20/(n-1);
y[i] = y[i-1] + 20/(n-1);
end for;
equation
y1=(mu.*x)-x.^3;

for i in 1:n loop
der(x[i])= mu*x[i]-(x[i]^3);
der(y[i])=-y[i];
y2[i] = 0;
end for;
//Plot the parametric plot b/w x[i] and y[i] to see the phase diagram
//Plot y1 and y2 to see the nullclines intersecting
end Eg8_1_2;