function Euler
//This is specifically tailor-made for example 6_2_1
input Real y0;
input Real h;
output Real[y_size] y;
protected
parameter Real ymax = 1e100;
parameter Integer y_size = 100;



algorithm
y[1] := y0;
for i in 2:y_size loop
y[i] := y[i-1] + h*y[i-1];
end for;
end Euler;