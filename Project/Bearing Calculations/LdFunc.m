function [Ld] = LdFunc (DesiredLife, DesiredSpeed)
%LLD - the desired life of the bearing, in hours.
%Nd - the desired speed of the machine.
LLd = DesiredLife;
Nd = DesiredSpeed;

%Below returns the value for Ld.
Ld = Nd*LLd;
end