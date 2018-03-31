function [se] = shafts(Sut,finish,d,loading)
%Sut - Sut in MPa
% finish:
%  1 - Ground
%  2 - Machined or cold-drawn
%  3 - Hot-rolled
%  4 - As-forged
% d - diameter in mm
% loading
% 1 - bending or mixed
% 2 - axial
% 3 - torsion
se_prime = Se_func(Sut);
ka = ka_func(Sut,finish);
kb = kb_func(d,loading);
se = se_prime*ka*kb*kc*kd*ke;
end

