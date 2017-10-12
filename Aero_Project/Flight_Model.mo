class Flight_Model
import Modelica.SIunits.*;
Length pn;//Inertial position along ii(North).
Length pe;//Inertial position along ji(east).
Length pd;//Inertial position along ki (down).
Length pos[3] = {pn, pe, pd};
Velocity u;//Body frame velocity rate measured along ib.
Velocity v;//Body frame velocity rate measured along jb.
Velocity w;//Body frame velocity rate measured along kb.
Velocity vel[3] = {u,v,w};
Angle phi;//Roll angle measuredwrt Fv2.
Angle theta;//Pitch angle measuredwrt Fv1.
Angle psi;//Yaw angle measuredwrt Fv.
Angle[3] ang_vec = {phi, theta, psi};
AngularVelocity p;//Roll rate measured across ib.
AngularVelocity q;//Pitch rate measured across jb.
AngularVelocity r;//Yaw rate measured across kb.
AngularVelocity[3] ang_vel = {p,q,r};
Mass m;//Mass
Force f; //Sum of forces

equation
der(pos) = rotation_ib(ang_vec,vel);


end Flight_Model;