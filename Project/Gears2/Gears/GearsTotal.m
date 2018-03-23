%Within this .m file, all of the variables that need to be input or found
%are to be defined. This is also the file where the functions to calculate
%bending stresses, contact stresses, and Factors of Safety for all of the
%gears and pinions will be included.
%_________________________________________________________________________%

%*************************************************************************%
% DESCRIPTIONS OF INPUT VARIABLES.
%__________________________________________________________________________
%
% d: diameter - input
% N: number of teeth - input (#)
% H: input power - input (W)
% F: Facewidth - input (mm)
% RPM: revolutions per minute - input (RPM)
% Yn_lookup: use FIGURE 14-14 pg. 755 - input
% b: facewidth = F (mm)
% d: pitch diameter = D (mm)
% J_lookup: use FIGURE 14-6, pg 745 Shigley - input
% N_cyc: Number of cycles - input (#)
% Hb: Brinell Hardness - to be found
% Grade: Metalurgical Grade - to be found
% mg: speed ratio - input
% st: use pg 748
%_________________________________________________________________________%

G1_D=43.18;
G1_N=34;
G1_H=4118;
G1_F=9.525;
G1_RPM=3258;
G1_Yn_LOOKUP=0.8687;
G1_J_LOOKUP=0.21;
G1_b=G1_F;
G1_N_cyc=7.82*10^8;
G1_mg=34/6;

G2_D=40.64;
G2_N=32;
G2_H=3491;
G2_F=9.525;
G2_RPM=575;
G2_Yn_LOOKUP=0.9187;
G2_J_LOOKUP=0.21;
G2_b=G1_F;
G2_N_cyc=1.38*10^8;
G2_mg=32/6;

%*************************************************************************%
%IMPORTANT ASSUMPTIONS.
%_________________________________________________________________________%
    %There will be two sets of gear and pinion combinations.
    %The value of 1 is assigned to the gear and pinion closest to the
    %motor.
    %The value of 2 is assigned to the gear and pinion closest to the
    %output.
    %Within this report, sometimes the gear and pinion at 1 are referred to
    %as A. Sometimes the gear and pinion at 2 are referred to as B.
    %Within the code, the gears will be represented with G, and the pinions
    %will be represented with P.
%_________________________________________________________________________%

P1_D=8.509;
P1_N=6;
P1_H=4094;
P1_F=9.525;
P1_RPM=17377;
P1_Yn_LOOKUP=0.823;
P1_J_LOOKUP=0.21;
P1_b=G1_F;
P1_N_cyc=4.171*10^9;
P1_mg=34/6;

P2_D=8.509;
P2_N=6;
P2_H=3913;
P2_F=9.525;
P2_RPM=3258;
P2_Yn_LOOKUP=0.8687;
P2_J_LOOKUP=0.21;
P2_b=G1_F;
P2_N_cyc=7.82*10^8;
P2_mg=32/6;

%Variables not specific to each gear. 
Hb = 348;
G_grade = 2;
P_grade = 2;
St = 370.652; %(10^6 Pa)

%Calls the gear function for each gear and pinion to identify the required
%specifications for the project.
[G1_BS,G1_BS_FOS,G1_CS,G1_CS_FOS] = gear(G1_D,G1_N,G1_H,G1_F,G1_RPM,G1_Yn_LOOKUP,12,9,1,1,3,1,2,0,G1_J_LOOKUP,1,1,1,G1_N_cyc,0.9,Hb,G_grade,0,Hb,Hb,G1_mg,0.2530727,1,St)
[P1_BS,P1_BS_FOS,P1_CS,P1_CS_FOS] = gear(P1_D,P1_N,P1_H,P1_F,P1_RPM,P1_Yn_LOOKUP,12,9,1,1,3,1,2,0,P1_J_LOOKUP,1,1,1,P1_N_cyc,0.9,Hb,P_grade,1,Hb,Hb,P1_mg,0.2530727,1,St)
[G2_BS,G2_BS_FOS,G2_CS,G2_CS_FOS] = gear(G2_D,G2_N,G2_H,G2_F,G2_RPM,G2_Yn_LOOKUP,12,9,1,1,3,1,2,0,G2_J_LOOKUP,1,1,1,G2_N_cyc,0.9,Hb,G_grade,0,Hb,Hb,G2_mg,0.2530727,1,St)
[P2_BS,P2_BS_FOS,P2_CS,P2_CS_FOS] = gear(P2_D,P2_N,P2_H,P2_F,P2_RPM,P2_Yn_LOOKUP,12,9,1,1,3,1,2,0,P2_J_LOOKUP,1,1,1,P2_N_cyc,0.9,Hb,P_grade,1,Hb,Hb,P2_mg,0.2530727,1,St)


