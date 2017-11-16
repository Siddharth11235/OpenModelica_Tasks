block Input_Wave
  extends Modelica.Blocks.Interfaces.SISO;
  import sComm = Arduino.SerialCommunication.Functions;
  import strm = Modelica.Utilities.Streams;
  Integer ok(fixed = false);
  Integer c_ok(fixed = false);

algorithm
  when initial() then
    ok := sComm.open_serial(1, 0, 115200) "COM port is 0 and baud rate is 115200";
    sComm.delay(500);
    end when; 
    if ok <> 0 then
    strm.print("Unable to open serial port, please check");
  else
    y := sComm.read_serial(1,8);
    sComm.delay(10);
  end if;
    when terminal() then
    c_ok := sComm.close_serial(1) "To close the connection safely";
  end when;
annotation(
    uses(Modelica(version = "3.2.2")));
end Input_Wave;