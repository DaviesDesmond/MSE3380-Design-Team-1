%This code gives correct results for contact stress, FOSC, and stressCall.
H = 120; %Given in Watts.
V = 0.2618; %Given in m/s.
Wt = Wtfunc(H,V);
%Calculate bending stress.
m = 2.5; %module.
%KO = KOfunc(,); %Inputs (power,machine)
Ko = 1;
%Kv = Kvfunc(); %Inputs (pitch-line velocity, KvFactor)
Kv = 1.099;
%Ks = ksfunc(); % Inputs (face width, stress cycle factor, module)
Ks = 1.003; %This value changes for the pinion and the gear.

%Below are the coefficients for stressC.
F = 18; %In millimetres.
%Km = Kmfunc(); %(crown_km,b_km,d_km,gearcond_km,Ce_accomidation_Km)
Km = 1.27;
Zr = 1; %THIS COEFFICEINT IS ALWAYS 1.
Zi = Zifunc(36/20); %Pitting resistance geometry factor. We are only using external gears.
Pd = 1/m; %diametral pitch.
N = 20; %Number of pinion/gear teeth, depending on which you calculate for
%Cp = cpfunc(); %Inputs (gearmaterial_cp,pinionmaterial_cp)
Cp = 191; %Given in root MPa.

Dp = N/Pd; %Pitch diameter. Given in millimetres.
stressC = Cp*sqrt(Wt*Ko*Kv*Ks*Km*Zr/(Dp*F*Zi))

%FOSC variables and equation below.
Sc = Scfunc(200,1); %Inputs (Brinell hardness, grade).
Kt = 1; %Temperature constant, for temperature less than 250 degrees Fahrenheit.
Kr = 0.885; %Specified in question. 0.85 for project.
Zn = Znfunc(10^8, 1); %Inputs (number of cycles, is it nitrided? (yes = 1, no = 0))
Zw = Zwfunc(1,0,0,0); %(pinion,Hp,Hg,mg)
FOSC = Sc*Zn*Zw/(Kt*Kr*stressC)

%Calculate the stressCall (contact endurance stress).
stressCall = Sc*Zn*Zw/(FOSC*Kt*Kr)







