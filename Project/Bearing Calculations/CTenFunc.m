%CTen Equation.

function [CTen] = CTenFunc (bearing, Vchoice, Fr, Fa, Co, RatingLife, RatedSpeed, DesiredLife, DesiredSpeed)
%Af - Load application factor.
%Fe - Equivalent radial load.
%Ld - Revolutions for desired life.
%Lr - Revolutions for rating life.
%a - Ball bearing or roller bearing.

Af = AfFunc(); 
Fe = FeFunc(Vchoice, Fr, Fa, Co); 
Ld = LdFunc(DesiredLife, DesiredSpeed); 
Lr = BearingLifeFunc(RatingLife, RatedSpeed); 
a = aFunc(bearing); 

CTen = Af*Fe*((Ld/Lr)^(1/a));

end