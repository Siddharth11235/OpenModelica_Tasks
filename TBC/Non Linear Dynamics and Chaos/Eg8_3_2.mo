class Eg8_3_2
parameter Real a1 = 10;
parameter Real b1 = 4;
parameter Real a2 = 10;
parameter Real b2 = 2;
parameter Integer n = 11;
Real y1[n];
Real x1[n];
Real y2[n];
Real x2[n];
initial equation
x1[1] = 0;
y1[1] = 3;
x2[1] = 0;
y2[1] = 3;
for i in 2:n 
loop
x1[i] = x1[i-1] + 7/(n-1);
y1[i] = y1[i-1] + 4/(n-1);
x2[i] = x2[i-1] + 7/(n-1);
y2[i] = y2[i-1] + 4/(n-1);
end for;
equation
for i in 1:n loop
der(x1[i])=a1-x2[i]-((4*x1[i]*y1[i])/(1+x1[i]^2));
der(y1[i])=(b1*x2[i])*(1-(y1[i]/(1+x1[i]^2)));
der(x2[i])=a2-x2[i]-((4*x2[i]*y2[i])/(1+x2[i]^2));
der(y2[i])=(b2*x2[i])*(1-(y2[i]/(1+x2[i]^2)));
end for;
end Eg8_3_2;