class Eg6_1_1
  
  Real y; //The unchanged y.
  Real y_p; //Perturbed y.
  initial equation
  y = 1.;
  y_p = 1.00001;
  equation
  der(y) =100*y - 101*(exp(-time));
  der(y_p) =100*y_p - 101*(exp(-time));
  /*As is clear from the plots of y and y_p, even the slightest of perturbations can cause vast changes in the results in an ill-conditioned problem.*/
end Eg6_1_1;