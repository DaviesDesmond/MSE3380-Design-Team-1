function [Ks] = ksfunc(F_ks,Yn_ks,m_ks)
% Ks - size factor - non-uniformity of material properties due to size. SUGGESTED TO BE EQUAL TO ONE. If Ks is less than one, assume it is one.
% F - face width
% Y - stress-cycle factor for bending strength
% P - diametral pitch
%kb = 1
P = 1/m_ks;
Ks = 1.192*((F_ks*sqrt(Yn_ks))/P)^0.0535;
end