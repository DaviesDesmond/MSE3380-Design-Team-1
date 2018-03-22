% descriptions of input variables
% d: diameter - inputed
% N: number of teeth - inputed
% H: input power - inputed
% F: Facewidth - inputed
% RPM: revolutions per minute - inputed
% Yn_lookup: use FIGURE 14-14 pg. 755 - input
% b: facewidth = F
% d diameter = D
% J_lookup: use FIGURE 14-6, pg 745 Shigely - imputed
% N_cyc: Number of cycles - inputed
% Hb: Brinell Hardness - need to find
% Grade: Metalurgical Grade - need to find
%  mg: speed ratio - input
%st - pg 748
G1_D=43.18;
G1_N=34;
G1_H=4094.543;
G1_F=9.525;
G1_RPM=3228;
G1_Yn_LOOKUP=0.8534;
G1_J_LOOKUP=0.21;
G1_b=G1_F;
G1_N_cyc=1.356*10^9;
G1_mg=34/6;


G2_D=40.64;
G2_N=32;
G2_H=3491.2;
G2_F=9.525;
G2_RPM=3066;
G2_Yn_LOOKUP=0.9023;
G2_J_LOOKUP=0.21;
G2_b=G1_F;
G2_N_cyc=1.288*10^9;
G2_mg=32/6;


P1_D=0.335;
P1_N=6;
P1_H=4094.543;
P1_F=28.575;
P1_RPM=17377.78;
P1_Yn_LOOKUP=0.808214;
P1_J_LOOKUP=0.21;
P1_b=G1_F;
P1_N_cyc=7.299*10^9;
P1_mg=6/34;


P2_D=0.335;
P2_N=6;
P2_H=3682.04;
P2_F=28.575;
P2_RPM=3066;
P2_Yn_LOOKUP=0.8547;
P2_J_LOOKUP=0.21;
P2_b=G1_F;
P2_N_cyc=1.288*10^9;
P2_mg=6/32;


Hb= 348;
G_grade=2;
P_grade=2;
St = 370.652;

[G1_BS,G1_BS_FOS,G1_CS,G1_CS_FOS] = gear(G1_D,G1_N,G1_H,G1_F,G1_RPM,G1_Yn_LOOKUP,12,9,1,3,3,0,2,0,G1_J_LOOKUP,1,1,0,G1_N_cyc,0.9,Hb,G_grade,0,Hb,Hb,G1_mg,0.2530727,1,St)
[P1_BS,P1_BS_FOS,P1_CS,P1_CS_FOS] = gear(P1_D,P1_N,P1_H,P1_F,P1_RPM,P1_Yn_LOOKUP,12,9,1,3,3,0,2,0,P1_J_LOOKUP,1,1,0,P1_N_cyc,0.9,Hb,P_grade,1,Hb,Hb,P1_mg,0.2530727,1,St)
[G2_BS,G2_BS_FOS,G2_CS,G2_CS_FOS] = gear(G2_D,G2_N,G2_H,G2_F,G2_RPM,G2_Yn_LOOKUP,12,9,1,3,3,0,2,0,G2_J_LOOKUP,1,1,0,G2_N_cyc,0.9,Hb,G_grade,0,Hb,Hb,G2_mg,0.2530727,1,St)
[P2_BS,P2_BS_FOS,P2_CS,P2_CS_FOS] = gear(P2_D,P2_N,P2_H,P2_F,P2_RPM,P2_Yn_LOOKUP,12,9,1,3,3,0,2,0,P2_J_LOOKUP,1,1,0,P2_N_cyc,0.9,Hb,P_grade,1,Hb,Hb,P2_mg,0.2530727,1,St)
