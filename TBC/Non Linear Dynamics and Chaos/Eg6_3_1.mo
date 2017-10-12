class Eg6_3_1
parameter Integer n = 17;
Real x[n];
Real y[n];
initial equation
x[1] = -0.999;
y[1] = -0.999;
for i in 2:n loop
x[i] = x[i-1] + (1.998/(n-1));
y[i] = y[i-1] + (1.998/(n-1));
end for;
equation
for i in 1:n loop
der(x[i]) = -(x[i])+x[i]^3; 
der(y[i]) = -2*y[i];
end for;
//For any value of |x| and |y| >= 1, the simulation fails.
end Eg6_3_1;