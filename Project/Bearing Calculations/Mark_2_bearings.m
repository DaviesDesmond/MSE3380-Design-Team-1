Fd = 0.68108;
%Desired life from chosen design, in hours.
DesiredLife = 8*5*50*2;
%Desired speed from chosen design, in rev/min.
DesiredSpeedRevPerMin = 3258;


Ld = DesiredLife*DesiredSpeedRevPerMin*60;
Lr = 10e6;
a=3/10;

C10 = Fd*(Ld/Lr)^(1/a)