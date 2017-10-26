block DCM
  extends Modelica.Blocks.Interfaces.SISO;
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage1 annotation(
    Placement(visible = true, transformation(origin = {-14, 64}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_PermanentMagnet dcpm annotation(
    Placement(visible = true, transformation(origin = {-14, 8.88178e-16}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
equation
  connect(signalVoltage1.p, dcpm.pin_ap) annotation(
    Line(points = {{-4, 64}, {-4, 39}, {-6, 39}, {-6, 14}}, color = {0, 0, 255}));
  connect(signalVoltage1.n, dcpm.pin_an) annotation(
    Line(points = {{-24, 64}, {-24, 39}, {-22, 39}, {-22, 14}}, color = {0, 0, 255}));
  connect(signalVoltage1.v, u) annotation(
    Line(points = {{-14, 71}, {-70, 71}, {-70, 0}, {-120, 0}}, color = {0, 0, 127}));
  y = dcpm.phi;
  annotation(
    uses(Modelica(version = "3.2.2")));
end DCM;