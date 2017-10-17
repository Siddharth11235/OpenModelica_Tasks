model control_system
  Modelica.Blocks.Continuous.PID PID[3](Td = 0.05, Ti = 1, k = 1)  annotation(
    Placement(visible = true, transformation(origin = {-10, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.SecondOrder secondOrder[3](D = 4, k = 1, w = 0.3)  annotation(
    Placement(visible = true, transformation(origin = {40, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback[3] annotation(
    Placement(visible = true, transformation(origin = {-50, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Sine sine[3](amplitude = {1.0, 1, 1}, freqHz = 1)  annotation(
    Placement(visible = true, transformation(origin = {-88, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(sine.y, feedback.u1) annotation(
    Line(points = {{-76, 24}, {-58, 24}, {-58, 24}, {-58, 24}}, color = {0, 0, 127}));
  connect(secondOrder.y, feedback.u2) annotation(
    Line(points = {{52, 24}, {74, 24}, {74, -20}, {-50, -20}, {-50, 16}, {-50, 16}}, color = {0, 0, 127}));
  connect(feedback.y, PID.u) annotation(
    Line(points = {{-40, 24}, {-24, 24}, {-24, 24}, {-22, 24}}, color = {0, 0, 127}));
  connect(PID.y, secondOrder.u) annotation(
    Line(points = {{1, 24}, {29, 24}, {29, 24}, {27, 24}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "3.2.2")));
end control_system;