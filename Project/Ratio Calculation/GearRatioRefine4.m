clear
clc
Pitch32Gear = [16 18 20 22 24 26 28 30 32 40 48 56 64 80 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]; % length 42
Pitch24Gear = [12 14 15 16 18 20 21 24 30 36 42 48 60 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]; % length 42
Pitch20Gear = [5 6 8 10 11 12 13 14 15 16 18 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50]; %length 42
LengthVar = 42;

P32Square = GearRatioIndSet(Pitch32Gear); %function works find (length)
P24Square = GearRatioIndSet(Pitch24Gear); %function works find (length)
P20Square = GearRatioIndSet(Pitch20Gear);

Options1 = OptionMakerSquare(P32Square,P32Square,LengthVar);
Options2 = OptionMakerSquare(P24Square,P24Square,LengthVar);
Options3 = OptionMakerSquare(P24Square,P32Square,LengthVar);
Options4 = OptionMakerSquare(P20Square,P20Square,LengthVar);
Options5 = OptionMakerSquare(P32Square,P20Square,LengthVar);
Options6 = OptionMakerSquare(P20Square,P24Square,LengthVar);

LowLim = 0.033075;
HighLim = 0.033085;

GoodOP1 = Options1>LowLim & Options1 <=HighLim;
GoodOP2 = Options2>LowLim & Options2 <=HighLim;
GoodOP3 = Options3>LowLim & Options3 <=HighLim;
GoodOP4 = Options4>LowLim & Options4 <=HighLim;
GoodOP5 = Options5>LowLim & Options5 <=HighLim;
GoodOP6 = Options6>LowLim & Options6 <=HighLim;

[R1,C1,H1,T1] = ind2sub(size(GoodOP1),find(GoodOP1 ==1));
[R2,C2,H2,T2] = ind2sub(size(GoodOP2),find(GoodOP2 ==1));
[R3,C3,H3,T3] = ind2sub(size(GoodOP3),find(GoodOP3 ==1));
[R4,C4,H4,T4] = ind2sub(size(GoodOP4),find(GoodOP4 ==1));
[R5,C5,H5,T5] = ind2sub(size(GoodOP5),find(GoodOP5 ==1));
[R6,C6,H6,T6] = ind2sub(size(GoodOP6),find(GoodOP6 ==1));


% Location = -1;
% for u = 33
%     for v = 1:42
%         v;
%         u;
%         display (Options10(:,:,v,u))
%     end
% end    
% 
% Value = Options10(:,:,3,33);
%Value = Options10(:,:,37:42,31:35);



