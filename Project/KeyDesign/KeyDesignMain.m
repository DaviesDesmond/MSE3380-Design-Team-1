%key design

Sy = 200; %yeild strength of key in MPa
nd = 2; %design factor of safety 
force = 4000; %force on the key in N
width = 15; %width of key in mm
height = 10; %height of key in mm
length = 20; %potential length of keyway in mm

%test for crush. 
%returns required length for design FOS and FOS for current length
[crushlength,crushFOS] = crushFailure(force,height,Sy,nd,length)

%test for shear failure
%returns required length for design FOS and FOS for current length
[shearLength,shearFOS] = shearFailure(force,width,Sy,nd,length)


