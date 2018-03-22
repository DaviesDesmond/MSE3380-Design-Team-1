function [BS,BS_FOS,CS,CS_FOS] = gear(d,N,H,F,RPM,Yn,tR,ht,power,machine,KvFactor,crown,gearcond,Ce_accomidation,J_lookup,gearmaterial,pinionmaterial,Yn_lookup,Nitrided,N_cyc,reli,Hb,Grade,pinion,Hp,Hg,mg,angle,inout)
% descriptions of input variables
% d: diameter
% N: number of teeth
% H: input power
% F: Facewidth
% RPM: revolutions per minute
% Yn:see FIGURE 14-14 (figure, not table)
% tR: rim thickness
% ht: tooth height
% machine: driven machine shock, KO table
% Uniform = 1
% Moderate shock = 2
% Heavy Shock = 3
% power: power shock value, KO table
% uniform = 1
% light shock = 2
% medium shock =3
% KvFactor
%  - cast iron, cast profile = 1
%  - cut or milled = 2
%  - hobbed or shapped = 3
%  - shaved or ground = 4
% crown: is the gear crowned
%  - 1: crowned
%  - 0: uncrowned
% b: facewidth
% d diameter
% gearcond: condition of gear
%  - 1: open gearing
%  - 2: commercial, enclosed unit
%  - 3: Precision, enclosed units
%  - 4: Extraprecision, enclosed gear unit
% Ce_accomidation:  gear adjusted at assembly, or compatibility is improved by lapping, or both
%  - 1: true
%  - 0: false
% J_lookup: use FIGURE 14-6, pg 745 Shigely
% for gearmaterial and pinionmaterial: material (Modulus of Elasticity*10^5)
%  - 1: Steel(2)
%  - 2: Malleable iron (1.7)
%  - 3: Nodular iron (1.7)
%  - 4: Cast iron (1.5)
%  - 5: Aluminum bronze (1.2)
%  - 6: Tin Bronze (1.1)
% Yn_lookup: use FIGURE 14-14 pg. 755
% Nitrided: is it nitrided:
%  - 0: No
%  - 1: yes
% N_cyc: Number of cycles
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
% inout: THiS ONE IS ODD, onternal or external gears
%  - -1: internal gears
%  - 1: external gears
b=F;
V = (pi*d*RPM)/60;%V:velocity in mm/s
m = d/N;%m: modulus
Wt = (H/V)*10^-3;%Wt: transmitted load in kN
%------------------------------------------------------------------------------
Ks = ksfunc(F,Yn,m);
Kb = kbfunc(tR,ht);
K0 = K0func(power,machine);
Kv = Kvfunc(V,KvFactor);
Km = Kmfunc(crown,b,d,gearcond,Ce_accomidation);
J = jfunc(J_lookup);
Yn = Ynfunc(Yn_lookup);
Kt = 1; %using 1 for Kt, if temp over 250 F, add it
Yz = Yzfunc(reli);
%------------------------------------------------------------------------------
BS = Wt*K0*Kv*Ks*Km*Kb/(m*F*J);
BS_FOS = St*Yn/(Kt*Yz*BS);
%------------------------------------------------------------------------------
Cp = cpfunc(gearmaterial,pinionmaterial);
Cf = 1;%defined
I = Ifunc(angle,mg,inout);
Sc = Scfunc(Hb, Grade);
Zn = Znfunc(Nitrided,N_cyc);
Zw = Zwfunc(pinion,Hp,Hg,mg);
CS = Cp*(Wt*K0*Kv*Ks*Km*Cf/(d*F*I))^(1/2);
CS_FOS = (Sc*Zn*Zw)/(CS*Kt*Yz);
end


