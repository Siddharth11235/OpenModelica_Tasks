class Eg8_1_1
parameter Real a = 0.4;
parameter Real b = 0.8;
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
y1=a.*x;
for i in 1:n loop
der(x[i])=-a*x[i] + y[i];
der(y[i])=((x[i]^2)/(1+x[i]^2))-b*y[i];
y2[i]=(x[i]^2)/(b*(1+x[i]^2));
end for;
//Plot the parametric plot b/w x[i] and y[i] to see the phase diagram
//Plot y1 and y2 to see the nullclines.
end Eg8_1_1;