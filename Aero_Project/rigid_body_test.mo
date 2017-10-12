model rigid_body_test
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(transformation(extent = {{-60, 20}, {-40, 40}})));
  Modelica.Blocks.Sources.Sine sine1[3](amplitude = {100.0, 0, 0}, freqHz = {1.0, 1, 1}) annotation(
    Placement(visible = true, transformation(origin = {-36, 74}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Forces.ForceAndTorque forceAndTorque1 annotation(
    Placement(visible = true, transformation(origin = {-8, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant torque[3](k = {100.0, 100, 0}) annotation(
    Placement(visible = true, transformation(origin = {22, 80}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Parts.Body body1(I_11 = 0.1, I_21 = 0, I_22 = 0.1, I_31 = 0, I_32 = 0, I_33 = 0.1, angles_fixed = true, angles_start = {10, 10, 10}, animation = false, m = 5, r_0(fixed = true, start = {0.2, 0, 0}), r_CM = {0.4, 0, 0}, v_0(fixed = true), w_0_fixed = true) annotation(
    Placement(visible = true, transformation(origin = {34, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(forceAndTorque1.frame_b, body1.frame_a) annotation(
    Line(points = {{2, 30}, {24, 30}, {24, 30}, {24, 30}}, color = {95, 95, 95}));
  connect(torque.y, forceAndTorque1.torque) annotation(
    Line(points = {{22, 68}, {-8, 68}, {-8, 42}, {-8, 42}}, color = {0, 0, 127}));
  connect(sine1.y, forceAndTorque1.force) annotation(
    Line(points = {{-36, 64}, {-16, 64}, {-16, 42}, {-16, 42}}, color = {0, 0, 127}, thickness = 0.5));
  connect(world.frame_b, forceAndTorque1.frame_a) annotation(
    Line(points = {{-40, 30}, {-18, 30}, {-18, 30}, {-18, 30}, {-18, 30}}, color = {95, 95, 95}));
  annotation(
    uses(Modelica(version = "3.2.2")));
end rigid_body_test;