%key design
clear
clc
Sy = 315; %yeild strength of key in MPa
nd = 1; %design factor of safety 
force = 7293; %force on the key in N
width = 3.18; %width of key in mm
height = 1.58*2; %height of key in mm
length = 9.4*2; %potential length of keyway in mm

%test for crush. 
%returns required length for design FOS and FOS for current length
[crushlength,crushFOS] = crushFailure(force,height,Sy,nd,length)

%test for shear failure
%returns required length for design FOS and FOS for current length
[shearLength,shearFOS] = shearFailure(force,width,Sy,nd,length)


