G1_D=50;
G1_N=20;
G1_H=120;
G1_F=18;
G1_RPM=100;
G1_Yn_LOOKUP=0.977;
G1_J_LOOKUP=0.33;
G1_b=G1_F;
G1_N_cyc=1*10^8;
G1_mg=36/20;

Hb= 200;
G_grade=2;
P_grade=2;
St = 194.9;
%these the the parateters inputted
%(d,N,H,F,RPM,Yn_lookup,tR,ht,power,machine,KvFactor,crown,gearcond,Ce_accomidation,J_lookup,gearmaterial,pinionmaterial,Nitrided,N_cyc,reli,Hb,Grade,pinion,Hp,Hg,mg,angle,inout,St_lookup)
[G1_BS,G1_BS_FOS,G1_CS,G1_CS_FOS] = gear(G1_D,G1_N,G1_H,G1_F,G1_RPM,G1_Yn_LOOKUP,12,2,1,1,5,0,2,0,G1_J_LOOKUP,1,1,1,G1_N_cyc,0.95,Hb,G_grade,1,Hb,Hb,G1_mg,0.34906585,1,St)