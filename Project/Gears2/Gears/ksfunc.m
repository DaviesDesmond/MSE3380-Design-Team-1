function [Ks] = ksfunc(F,Y,m)
% Ks - size factor - non-uniformity of material properties due to size. SUGGESTED TO BE EQUAL TO ONE. If Ks is less than one, assume it is one.
% F - face width (mm)
% Y - stress-cycle factor for bending strength, lewis factor
% P - diametral pitch (mm)
% Kb = 1;
% P = 1/m;
% Ks = 0.8433*((F*sqrt(Y))/P)^0.0535;
Ks=1; %factors all close enough to 1 and values not available for 14.5 pressure angle, or for SI equations
end