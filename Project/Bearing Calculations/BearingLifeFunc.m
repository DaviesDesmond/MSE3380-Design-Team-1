%Bearing-Life recommendations 
%The bearing life recommendation for this machine is 20-30 kh.
%We will assume 25 kh.

function [BearingLife] = BearingLifeFunc(RatedLife, RatedSpeed)
%LLr - rating life, in hours. 
%Nr - rated speed, in rev/min.

LLr = RatedLife; 
Nr = RatedSpeed;

BearingLife = LLr*Nr;
end