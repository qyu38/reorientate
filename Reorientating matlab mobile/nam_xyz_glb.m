function [gl_x,gl_y,gl_z] = nam_xyz_glb(g_v_all)
%naming the measurements into respective axis
gl_x = g_v_all(1,:);
gl_y = g_v_all(2,:);
gl_z = g_v_all(3,:);
end