block Input_Wave
  extends Modelica.Blocks.Interfaces.SO;
  import sComm = Arduino.SerialCommunication.Functions;
  import strm = Modelica.Utilities.Streams;
  Integer ok(fixed = false);
  Integer c_ok(fixed = false);
algorithm
  when initial() then
    ok := sComm.open_serial(1, 0, 9600) "COM port is 0 and baud rate is 9600";
    sComm.delay(1000);
    end when; 
    
    y := sComm.cmd_analog_in(1, 5);
    when terminal() then
    c_ok := sComm.close_serial(1) "To close the connection safely";
  end when;
end Input_Wave;