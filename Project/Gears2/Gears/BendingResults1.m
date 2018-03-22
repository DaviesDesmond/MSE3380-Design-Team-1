%This code correctly gives bending stresses for both the pinion and
%gear. Assuming hard-coded constants are correct.

H = 120; %Given in Watts.
V = 0.2618; %Given in m/s.
Wt = Wtfunc(H,V);%good
%Calculate bending stress.
m = 2.5; %module.
%KO = KOfunc(,); %Inputs (power,machine)
Ko = 1;
%Kv = Kvfunc(); %Inputs (pitch-line velocity, KvFactor)%good
Kv = 1.099;
%Ks = ksfunc(); % Inputs (face width, stress cycle factor, module)
Ks = 1.003;
Pd = 1/m; %diametral pitch.
F = 18; %In millimetres.
%Km = Kmfunc(); %(crown_km,b_km,d_km,gearcond_km,Ce_accomidation_Km)
Km = 1.27;
%Kb = kbfunc(); %rim thickness,tooth height)
Kb = 1;
J = jfunc(0.33);

%Fills in equation for bending stress.
stressB = Wt*Ko*Kv*Ks*Pd*Km*Kb/(F*J)

%Calculate the factor of safety.
St = Stfunc(194.9); %Given in MPa. %Looked up.
Yn = Ynfunc(0.977); %Looked up.
Kt = 1; %Temperature constant, for temperature less than 250 degrees Fahrenheit.
Kr = 0.885; %Specified in question. 0.85 for project.

%Below will calculateFOS.
FOSB = St*Yn/(Kt*Kr*stressB)

%Calculate for the bending endurance strength.
stressBall = St*Yn/(FOSB*Kt*Kr)
