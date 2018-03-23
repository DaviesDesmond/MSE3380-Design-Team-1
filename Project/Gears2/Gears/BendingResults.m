%This code correctly gives bending stresses for both the pinion and
%gear. Assuming hard-coded constants are correct.
P1_D=0.335;
P1_N=6;
P1_H=4094.543;
P1_F=9.525;
P1_RPM=17377.78;
P1_Yn_LOOKUP=0.808214;
P1_J_LOOKUP=0.21;
P1_b=G1_F;
P1_N_cyc=1;
P1_mg=34/6;
V = (pi*P1_D*P1_RPM)*(10^-3)/60;%V:velocity in m/s
H = 4094.543; %Given in Watts.
Wt = (H/V);%Wt: transmitted load in N
%Calculate bending stress.
Pd =20;
m = 1/Pd; %module.
Ko = KOfunc(1,3); %Inputs (power,machine)

Kv = Kvfunc(V,3); %Inputs (pitch-line velocity, KvFactor)
%Ks = ksfunc(); % Inputs (face width, stress cycle factor, module)
Ks = 1.00;%assuming 1
%Pd = 1/m; %diametral pitch.
F = 9.525; %In millimetres.
Km = KmFunc(0,F,0.335,2,0); %(crown_km,b_km,d_km,gearcond_km,Ce_accomidation_Km)

%Kb = kbfunc(); %rim thickness,tooth height)
Kb = 1;
J = jfunc(0.21);
%J=
%Fills in equation for bending stress.
stressB = Wt*Ko*Kv*Ks*Pd*Km*Kb/(F*J);

%Calculate the factor of safety.
St = Stfunc(370.652); %Given in MPa. %Looked up.
Yn = Ynfunc(P1_Yn_LOOKUP); %Looked up.
Kt = 1; %Temperature constant, for temperature less than 250 degrees Fahrenheit.
Kr = 0.85; %Specified in question. 0.85 for project.

%Below will calculateFOS.
FOSB = St*Yn/(Kt*Kr*stressB)

%Calculate for the bending endurance strength.
stressBall = St*Yn/(FOSB*Kt*Kr)
