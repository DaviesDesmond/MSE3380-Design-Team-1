St = Stfunc;
A = Afunc;
Yn = Ynfunc;
mg = mgfunc;
Ytheta = 1;
Yz = 0.85; %For 90% reliability, as stated in the problem.

Sf = (St/stressall)*(Yn/(Ytheta*Yz));%Factor of safety for bending.

H = Hbp/Hbg;
Zw = 1.0+A*(mg-1);
%Zw = 1 for pinion.
Sc = Scfunc;

stresscall = (Sc*Zn*Zw)/(Sh*Ytheta*Yz); 
Sh = (Sc*Zn*Zw)/(stresscall*Ytheta*Yz); %contact/wear FOS
