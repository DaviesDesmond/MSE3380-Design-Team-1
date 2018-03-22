% Ks - size factor - non-uniformity of material properties due to size. SUGGESTED TO BE EQUAL TO ONE. If Ks is less than one, assume it is one.
% F - face width
% Y - stress-cycle factor for bending strength
% P - diametral pitch
%kb = 1
F = 
Y = 
P = 
Ks = 1/kb %equal to inverse of kb
Ks = 1.192*((F*sqrt(Y))/P)^0.0535
