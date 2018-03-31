function [kc] = kc_func(loading)
% loading
% 1 - bending or mixed
% 2 - axial
% 3 - torsion
table = [1 0.85 0.59];
kc = table(loading);
end

