function rotation_ib
import Modelica.SIunits.*;
input Angle[3] rot_ang;
input Real [3] vec;
output Real [3] rotated_vec;
algorithm
 rotated_vec :=  {{cos(rot_ang[2])*cos(rot_ang[1]), sin(rot_ang[1])*sin(rot_ang[2])*cos(rot_ang[3])-cos(rot_ang[1])*sin(rot_ang[3]),cos(rot_ang[1])*sin(rot_ang[2])*cos(rot_ang[3])-sin(rot_ang[1])*sin(rot_ang[3])},{cos(rot_ang[2])*sin(rot_ang[3]),sin(rot_ang[1])*sin(rot_ang[2])*sin(rot_ang[3])+cos(rot_ang[3])*cos(rot_ang[1]),cos(rot_ang[1])*sin(rot_ang[2])*sin(rot_ang[3])-sin(rot_ang[1])*sin(rot_ang[3])},{-sin(rot_ang[2]), sin(rot_ang[1])*cos(rot_ang[2]),cos(rot_ang[1])*cos(rot_ang[2])}}*vec;
end rotation_ib;