class Eg6_3_2
parameter Integer n1 = 6;
parameter Integer n2 = 36;
parameter Integer a = -1;
Real x1[n1](each min = -4, each max = 4);
Real y1[n1](each min = -4, each max = 4);
Real x2[n2](each min = -4, each max = 4);
Real y2[n2](each min = -4, each max = 4);
initial equation
x1[1] = -4;
y1[1] = -4;
for i in 2:n1 loop
x1[i] = x1[i-1] + (8/(n1+1));
y1[i] = y1[i-1] + (8/(n1+1));
end for;
x2[1] = -4;
y2[1] = -4;
for i in 2:n2 loop
x2[i] = x2[i-1] + (8/(n2+1));
y2[i] = y2[i-1] + (8/(n2+1));
end for;
equation
der(x1) = -y1+ a.*x1.*(x1.^2 + y1.^2);
der(y1) = x1+a.*y1.*(x1.^2+y1.^2);
der(x2) = -y2+ a.*x2.*(x2.^2+y2.^2); 
der(y2) = x2+a.*y2.*(x2.^2+y2.^2); 
end Eg6_3_2;