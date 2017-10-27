block Input_Wave
  extends Modelica.Blocks.Interfaces.SISO;
  import sComm = Arduino.SerialCommunication.Functions;
  import strm = Modelica.Utilities.Streams;
  Integer ok(fixed = false);
  Integer c_ok(fixed = false);
    Real setpoint;

algorithm
  when initial() then
    ok := sComm.open_serial(1, 0, 9600) "COM port is 0 and baud rate is 115200";
    sComm.delay(500);
    end when; 
    if ok <> 0 then
    strm.print("Unable to open serial port, please check");
  else
    setpoint := sComm.cmd_analog_in(1,5);
    sComm.cmd_analog_out(1, 4, u);
    y:= sComm.cmd_analog_in(1,3);
  end if;
    when terminal() then
    c_ok := sComm.close_serial(1) "To close the connection safely";
  end when;
annotation(
    uses(Modelica(version = "3.2.2")));
end Input_Wave;