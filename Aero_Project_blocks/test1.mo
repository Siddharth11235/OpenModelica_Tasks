model test1
  import sComm = Arduino.SerialCommunication.Functions;
  import strm = Modelica.Utilities.Streams;
  Integer ok(fixed = false);
  Integer c_ok(fixed = false);
  Real test_op;
algorithm
  when initial() then
    ok := sComm.open_serial(1, 0, 9600) "COM port is 0 and baud rate is 115200";
    end when; 
     if ok <> 0 then
    strm.print("Unable to open serial port, please check");
    else
    sComm.wakeup();
    test_op := sComm.cmd_analog_in(1,5);
    end if;
    when terminal() then
    c_ok := sComm.close_serial(1) "To close the connection safely";
    end when;
end test1;