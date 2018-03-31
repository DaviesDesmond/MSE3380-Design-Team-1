function [se] = se_func(Sut,finish,d,loading,temp,R)
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
% temp - temperature in C
% R - reliability as a decimal (ex 90% = 0.9)
se_prime = Se_prime_func(Sut);
ka = ka_func(Sut,finish);
kb = kb_func(d,loading);
kc = kc_func(loading);
kd = kf_func(temp);
ke = ke_func(R);
%kf = 1 cause reasone
se = se_prime*ka*kb*kc*kd*ke;
end

