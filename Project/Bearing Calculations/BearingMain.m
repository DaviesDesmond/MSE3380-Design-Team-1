%In this code, the variables will be named and the functions will be
%called.
%In order to use this function, you must first determine the correct bore
%size need for the bearing to fit on the shaft.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Please input the corresponding values for the chosen bearing.
%KEEP IN MIND THAT THIS IS AN ITERATIVE PROCESS AND WILL HAVE TO BE
%REPEATED OFTEN.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Radial Loading, in kN.
Fr = 100;
%Axial loading, in kN.
Fa = 100;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Desired life from chosen design, in hours.
DesiredLife = 30000;
%Desired speed from chosen design, in rev/min.
DesiredSpeedRevPerMin = 575;
DesiredSpeed = DesiredSpeedRevPerMin*60;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Co value from chosen bearing.
Co = 6.2;
%Rated life from chosen bearing, in hours.
RatedLife = 20000;
%Rated speed from chosen bearing, in revolutions per minute.
RatedSpeedRevPerMin = 500;
RatedSpeed = RatedSpeedRevPerMin*60;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Define whether the inner or outer ring on the bearing is rotating.
%Vchoice = 0 if the inner ring is rotating.
%Vchoice = 1 if the outer ring is rotating.
Vchoice = 0;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%bearing = 0 - ball bearings
%bearing = 1 - roller bearings
bearing = 0;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Af has been assumed to be 1.5 since it undergoes light to moderate impact.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Below is the equation to calculate CTen
CTen = CTenFunc(bearing, Vchoice, Fr, Fa, Co, RatedLife, RatedSpeed, DesiredLife, DesiredSpeed);

