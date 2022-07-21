function [l_v_all,angle,t_acc] = consistent_dimension(l_v_all,angle,t_acc)
%ensure the three measurements are the same length
[dummy,l_v_col]=size(l_v_all);
[dummy,angle_col]=size(angle);
if l_v_col<angle_col
    angle=angle(:,1:l_v_col);
elseif l_v_col>angle_col
    l_v_all=l_v_all(:,1:angle_col);
    t_acc=t_acc(1:angle_col,:);
end

end

