class Eg6_6_1
parameter Integer n = 16;
Real x[n];
Real y[n];
initial equation
x[1] = -4;
y[1] = -4;
for i in 2:n loop
x[i] = x[i-1] + (8/(n-1));
y[i] = y[i-1] + (8/(n-1));
end for;
equation
der(x) = y -y.^3; 
der(y) = -x - y.^2;
end Eg6_6_1;