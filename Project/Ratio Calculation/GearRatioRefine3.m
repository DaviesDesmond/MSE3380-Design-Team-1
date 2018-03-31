Pitch32Gear = [16 18 20 22 24 26 28 30 32 40 48 56 64 80 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]; % length 42
Pitch24Gear = [12 14 15 16 18 20 21 24 30 36 42 48 60 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]; % length 42
Pitch20Gear = [5 6 8 10 11 12 13 14 15 16 18 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50]; %length 42

LengthVar = 42;

P32Square = GearRatioIndSet(Pitch32Gear); %function works find (length)
P24Square = GearRatioIndSet(Pitch24Gear); %function works find (length)
P20Square = GearRatioIndSet(Pitch20Gear);

Options7 = OptionMakerSquare(P32Square,P32Square,LengthVar);
Options8 = OptionMakerSquare(P24Square,P24Square,LengthVar);
Options9 = OptionMakerSquare(P24Square,P32Square,LengthVar);
Options10 = OptionMakerSquare(P20Square,P20Square,LengthVar);
Options11 = OptionMakerSquare(P32Square,P20Square,LengthVar);
Options12 = OptionMakerSquare(P20Square,P24Square,LengthVar);

LowLim = 0.033075;%lowest ration looked for
HighLim = 0.03309;%highest ration looked for


GoodOP7 = Options7>LowLim & Options7 <=HighLim;
GoodOP8 = Options8>LowLim & Options8 <=HighLim;
GoodOP9 = Options9>LowLim & Options9 <=HighLim;
GoodOP10 = Options10>LowLim & Options10 <=HighLim;
GoodOP11 = Options11>LowLim & Options11 <=HighLim;
GoodOP12 = Options12>LowLim & Options12 <=HighLim;

OP7 = find(GoodOP7 ==1);
OP8 = find(GoodOP8 ==1);
OP9 = find(GoodOP9 ==1);
OP10 = find(GoodOP10 ==1);
OP11 = find(GoodOP11==1);
OP12 = find(GoodOP12 ==1);


% Location = -1
% for u = 33
%     for v = 1:42
%         v
%         u
%         display (Options10(:,:,v,u))
%     end
% end    
% 
% Value = Options10(:,:,3,33);
% %Value = Options10(:,:,37:42,31:35);
% 
% 
% 
