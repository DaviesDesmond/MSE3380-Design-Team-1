%This code correctly gives bending stresses for both the pinion and
%gear. Assuming hard-coded constants are correct.

H = 3311.8; %Given in Watts.
V = 12.23264; %Given in m/s.
Wt = Wtfunc(H,V);
%Calculate bending stress.
Pd =20;
m = 1/Pd; %module.
Ko = KOfunc(1,3); %Inputs (power,machine)

Kv = Kvfunc(V,3); %Inputs (pitch-line velocity, KvFactor)
%Ks = ksfunc(); % Inputs (face width, stress cycle factor, module)
Ks = 1.00;%assuming 1
%Pd = 1/m; %diametral pitch.
F = 9.525; %In millimetres.
Km = Kmfunc(0,F,40.64,2,0); %(crown_km,b_km,d_km,gearcond_km,Ce_accomidation_Km)

%Kb = kbfunc(); %rim thickness,tooth height)
Kb = 1;
J = jfunc(0.33);
%J=
%Fills in equation for bending stress.
stressB = Wt*Ko*Kv*Ks*Pd*Km*Kb/(F*J);

%Calculate the factor of safety.
St = Stfunc(194.9); %Given in MPa. %Looked up.
Yn = Ynfunc(0.977); %Looked up.
Kt = 1; %Temperature constant, for temperature less than 250 degrees Fahrenheit.
Kr = 0.885; %Specified in question. 0.85 for project.

%Below will calculateFOS.
FOSB = St*Yn/(Kt*Kr*stressB)

%Calculate for the bending endurance strength.
stressBall = St*Yn/(FOSB*Kt*Kr)
