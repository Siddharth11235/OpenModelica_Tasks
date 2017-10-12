class Eg1_2
Real y(start = 1);
parameter Integer N[8] = {2, 4, 8 ,16, 32, 64, 128, 256};
parameter Real h[8] = {1/2,1/4,1/8 ,1/16, 1/32, 1/64, 1/128, 1/256};
parameter Real y0 = 1;
  parameter Real x0 = 0;
  parameter Integer xn = 1;
  
  Real x1[N[1]];
  Real x2[N[2]];
  Real x3[N[3]];
  Real x4[N[4]];
  Real x5[N[5]];
  Real x6[N[6]];
  Real x7[N[7]];
  Real x8[N[8]];
  Real y1[N[1]];
  Real y2[N[2]];
  Real y3[N[3]];
  Real y4[N[4]];
  Real y5[N[5]];
  Real y6[N[6]];
  Real y7[N[7]];
  Real y8[N[8]];
 equation
    x1[1] = x0;
    x2[1] = x0;
    x3[1] = x0;
    x4[1] = x0;
    x5[1] = x0;
    x6[1] = x0;
    x7[1] = x0;
    x8[1] = x0;
    y1[1] = y0;
    y2[1] = y0;
    y3[1] = y0;
    y4[1] = y0;
    y5[1] = y0;
    y6[1] = y0;
    y7[1] = y0;
    y8[1] = y0;
  for i in 2:(N[1]) loop
  x1[i] = x1[i-1] + h[1];
  y1[i] = y1[i-1] + h[1]*(-10*y1[i-1]);
  end for;
  for i in 2:(N[2]) loop
  x2[i] = x2[i-1] + h[2];
  y2[i] = y2[i-1] + h[2]*(-10*y2[i-1]);
  end for;
  for i in 2:(N[3]) loop
  x3[i] = x3[i-1] + h[3];
  y3[i] = y3[i-1] + h[3]*(-10*y3[i-1]);
  end for;
  for i in 2:(N[4]) loop
  x4[i] = x4[i-1] + h[4];
  y4[i] = y4[i-1] + h[4]*(-10*y4[i-1]);
  end for;
  for i in 2:(N[5]) loop
  x5[i] = x5[i-1] + h[5];
  y5[i] = y5[i-1] + h[5]*(-10*y5[i-1]);
  end for;
  for i in 2:(N[6]) loop
  x6[i] = x6[i-1] + h[6];
  y6[i] = y7[i-1] + h[6]*(-10*y6[i-1]);
  end for;
  for i in 2:(N[7]) loop
  x7[i] = x7[i-1] + h[7];
  y7[i] = y7[i-1] + h[7]*(-10*y7[i-1]);
  end for;
  for i in 2:(N[8]) loop
  x8[i] = x8[i-1] + h[8];
  y8[i] = y8[i-1] + h[8]*(-10*y8[i-1]);
  end for; 
  
  der(y) = -10*y;//For comparison
  //As is clear from the plots, any value of h lower than e/10 would suffice to yield stability
end Eg1_2;