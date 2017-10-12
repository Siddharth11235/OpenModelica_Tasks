class Eg7_1_1
parameter Integer n = 17;
Real r[n];
Real theta[n];
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
r = (x.^2 + y.^2).^(0.5);
tan(theta) = y./x;
for i in 1:n loop
der(r[i]) = r[i]*(1-r[i]^2);
der(theta[i]) = 1;
end for;
end Eg7_1_1;