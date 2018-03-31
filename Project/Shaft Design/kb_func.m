function [kb] = kb_func(d,loading)
%d - diameter in mm
% loading
% 1 - bending or mixed
% 2 - axial
% 3 - torsion
if loading == 2
    kb = 1;
else
    if ((d > 2.79) && (d <= 51))
        kb = 1.24*(d^-0.107);
    elseif ((d > 51) && (d <= 254))
        kb = 1.51*(d^-0.157);
    else
        error('kb: diameter must be between 2.79 and 254 mm')
    end
end

end

