%Function for finding the equivalent radial load on the bearing.
function [Fe] = FeFunc (Vchoice, Fr, Fa, Co)
%i - Equal to 1 or 2 depending on if Fa/(V*Fr) is less than or greater than
%e.
%Xi - Ordinate intercept.
%Yi - Slope of the line.
%V - Shows whether the inner ring or outer ring is rotating.
FaOverCo = FaOverCoFunc(Fa, Co);
e = eFunc(FaOverCo);

V = VchoiceFunc(Vchoice);
i = iFunc(Fa, V, Fr, e);
X = XFunc(i);
Y = YFunc(i, FaOverCo);
%Equation to solve for Fe.
Fe = (X*V*Fr) + (Y*Fa);

end

