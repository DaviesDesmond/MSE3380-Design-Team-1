function [Zi] = Zifunc (Mg)
%Mg - gear ratio
%phi - transverse pressure angle. Spur gears, so always 20 degrees.
%Mn - load-sharing ratio. Mn = 1 for spur gears. 
phi = 20*pi/180; %ensures that angle is in radians for the matlab functions.
Mn = 1;

Zi = (cos(phi))*(sin(phi))*Mg/(2*Mn*(Mg+1))

end