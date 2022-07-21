function [g_v] = three_D_reoritent(l_v,pitch,roll,yaw)
%convert the local acceleration vector to the global one
g_v=rotz(-yaw)*roty(roll)*rotx(-pitch)*l_v;
end


 