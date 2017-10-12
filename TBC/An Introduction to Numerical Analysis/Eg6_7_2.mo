class Eg6_7_2
 Real y(start = 1);
  parameter Real h= 0.125;
  parameter Real y0 = 1;
  parameter Real t0 = 0;
  parameter Integer tn = 10;
  parameter Integer size_1 = 81;//tn/h; type conversion issues. Will return and fix type.
  Real t[size_1];
  Real y1[size_1]; 
  Real k1[2];
  Real k2[2];
  equation
  t[1] = t0;
  for i in 2:size_1 loop
  t[i] = t[i-1] + h;
  end for;
  y1[1] = y0;
  for i in 1:2 loop    
        k1[i]=h*((1/(1+t[i]^2)) - 2*y1[i]^2);
        k2[i]=h*((1/(1+(t[i]+h)^2)) - 2*(y1[i]+ k1[i])^2);
        y1[i+1] = y1[i] + (k2[i]+k1[i])/2;
  end for;  
     
  for i in 2:size_1 - 2 loop
          y1[i+2] = y1[i+1] + (h/12)*(23*((1/(1+t[i+1]^2)) - 2*y1[i+1]^2)-16*((1/(1+t[i]^2)) - 2*y1[i]^2)+5*((1/(1+t[i-1]^2)) - 2*y1[i-1]^2));
  end for;
  der(y) = (1/(1+time^2)) - 2*y^2;
end Eg6_7_2;