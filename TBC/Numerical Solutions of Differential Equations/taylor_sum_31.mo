function taylor_sum_31
input Real y;
input Real h;
output Real y_o;

algorithm
y_o := y -h*y^2 + h^2*y^3 - h^3*y^4;
end taylor_sum_31;