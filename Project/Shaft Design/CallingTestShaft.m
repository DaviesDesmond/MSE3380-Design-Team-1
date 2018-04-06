clear 
clc
%Sut - Sut in MPa
Sut=1250;
% finish:
%  1 - Ground
%  2 - Machined or cold-drawn
%  3 - Hot-rolled
%  4 - As-forged
finish=2;
% d - diameter in mm
d=25;
% loading
% 1 - bending or mixed
% 2 - axial
% 3 - torsion
loading=1;
% temp - temperature in C
temp=25;
% R - reliability as a decimal (ex 90% = 0.9)
reliability=0.9;
% Kt - look up in appendix A-15
Kt_bend=1.3;
% q - lookup on page 303 shigely
q_bend=0.9;
% Kt - look up in appendix A-15
Kt_axial=1;
% q - lookup on page 303 shigely
q_axial=1;
% Kts - look up in appendix A-15 (16?)
Kts=1.2;
% qs - lookup on page 304 shigely
qs=0.95;
% Max and Min bending moment at point
sigma_bending_max=4.715;
sigma_bending_min=-4.715;
% Max and min axial force at point
sigma_axial_max=0;
sigma_axial_min=0;
% Max and Min torque at point
torque_max=11.468;
torque_min=11.468;
% Yield Strength
Sy=1050;
[FOS,FOS_torsion,FOS_yield] = TestShaft(Sut,finish,d,loading,temp,reliability,Kt_bend,q_bend,Kt_axial,q_axial,Kts,qs,sigma_bending_max,sigma_bending_min,sigma_axial_max,sigma_axial_min,torque_max,torque_min,Sy);