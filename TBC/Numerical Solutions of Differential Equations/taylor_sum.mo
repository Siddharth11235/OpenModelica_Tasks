function taylor_sum
input Integer p;
input Real t;
output Real op;
algorithm
op :=0;
for i in 3:p loop
op := op + 2*(t^p)/(factorial(p));
end for;
end taylor_sum;