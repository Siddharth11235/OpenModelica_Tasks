block force_block
  extends Modelica.Blocks.Interfaces.MO;
  parameter Integer nout = 3;
 equation
  y = {1.0,0,0};
end force_block;