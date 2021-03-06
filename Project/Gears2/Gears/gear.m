function [BS,BS_FOS,CS,CS_FOS] = gear(d,N,H,F,RPM,Yn_lookup,tR,ht,power,machine,KvFactor,crown,gearcond,Ce_accomadation,J_lookup,gearmaterial,pinionmaterial,Nitrided,N_cyc,reli,Hb,Grade,pinion,Hp,Hg,mg,angle,inout,St_lookup)%,LF)
% DESCRIPTION OF INPUT VARIABLES.
% d: diameter (mm)
% N: number of teeth (#)
% H: input power (W)
% F: Facewidth (mm)
% RPM: revolutions per minute (RPM)
% Yn: see FIGURE 14-14 (figure, not table)
% tR: rim thickness (mm)
% ht: tooth height (mm)
% machine: driven machine shock, Ko table
% Uniform = 1
% Moderate shock = 2
% Heavy Shock = 3
% power: power shock value, Ko table
% uniform = 1
% light shock = 2
% medium shock = 3
% KvFactor
%  - cast iron, cast profile = 1
%  - cut or milled = 2
%  - hobbed or shapped = 3
%  - shaved or ground = 4
% crown: is the gear crowned
%  - 1: crowned
%  - 0: uncrowned
% b: facewidth (mm)
% d: diameter (mm)
% gearcond: condition of gear
%  - 1: open gearing
%  - 2: commercial, enclosed units
%  - 3: precision, enclosed units
%  - 4: extraprecision, enclosed gear unit
% Ce_accomadation:  gear adjusted at assembly, or compatibility is improved by lapping, or both
%  - 1: true
%  - 0: false
% J_lookup: use FIGURE 14-6, pg 745 Shigley
% for gearmaterial and pinionmaterial: material (MODULUS OF ELASTICITY*10^5)
%  - 1: Steel(2)
%  - 2: Malleable iron (1.7)
%  - 3: Nodular iron (1.7)
%  - 4: Cast iron (1.5)
%  - 5: Aluminum bronze (1.2)
%  - 6: Tin Bronze (1.1)
% Nitrided: is it nitrided:
%  - 0: No
%  - 1: yes
% N_cyc: Number of cycles (#)
% reli: reliability as decimal (eg, 90% enter 0.9)
% Hb: Brinell Hardness
% Grade: Metalurgical Grade
% pinion: is it the pinion
%  - 0: no
%  - 1: yes
%  Hp: Brinell hardness of pinion
%  Hg: Brinell hardness of gear
%  mg: speed ratio
%  angle: transverse pressure angle in radians
% inout: THiS ONE IS ODD, internal or external gears, we're only using
% external gears
%  angle: transverse pressure angle (radians)
%inout: THiS ONE IS ODD, internal or external gears
%  angle: transverse pressure angle (radians)
%inout: THiS ONE IS ODD, internal or external gears
%  - -1: internal gears
%  - 1: external gears 
%LF - Lewis Factor

b = F; %(mm)
V = (pi*d*RPM)/60; %V: velocity in mm/s found from RPM. 
m = d/N; %m: modulus
Wt = (H/V); %Wt: transmitted load in kN

%------------------------------------------------------------------------------
Yn = Ynfunc(Yn_lookup); 
Ks = ksfunc(F,Yn,m);
Kb = kbfunc(tR,ht);
Ko = KOfunc(power,machine);
Kv = Kvfunc(V,KvFactor);
Km = KmFunc(crown,b,d,gearcond,Ce_accomadation);
J = jfunc(J_lookup);
Kt = 1; %using 1 for Kt, if temp over 250 F, add it
Yz = Yzfunc(reli);
St = Stfunc(St_lookup);
%------------------------------------------------------------------------------
BS = Wt*Ko*Kv*Ks*Km*Kb/(m*F*J);
BS_FOS = St*Yn/(Kt*Yz*BS);
%------------------------------------------------------------------------------
Cp = cpfunc(gearmaterial,pinionmaterial);
Cf = 1; %Defined in the problem of the project.
I = Ifunc(angle,mg,inout);
Sc = Scfunc(Hb, Grade);
Zn = Znfunc(Nitrided,N_cyc);
Zw = Zwfunc(pinion,Hp,Hg,mg);
CS = Cp*(Wt*Ko*Kv*Ks*Km*Cf/(d*F*I))^(1/2);
CS_FOS = (Sc*Zn*Zw)/(CS*Kt*Yz);
end


