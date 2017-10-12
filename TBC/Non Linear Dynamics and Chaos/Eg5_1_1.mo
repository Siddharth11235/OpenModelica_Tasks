class Eg5_1_1
parameter Integer n = 17;
Real x[n];
Real v[n];
initial equation
x[1] = -4;
v[1] = 0;
for i in 2:n loop
x[i] = x[i-1] + (8/(n-1));
v[i] = 0;
end for;
equation
der(x) = v;
der(v) = -50*x;
//To obtain the plot, make a parametric plot with x[i] and v[i] as parameters
end Eg5_1_1;