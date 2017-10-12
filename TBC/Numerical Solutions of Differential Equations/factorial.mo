function factorial
input Integer p;
output Integer q;
algorithm
q :=1;
for i in 1:p loop
q := i*q;
end for;
end factorial;