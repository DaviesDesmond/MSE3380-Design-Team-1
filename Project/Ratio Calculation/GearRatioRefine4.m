clear
clc
Pitch32Gear = [16 18 20 22 24 26 28 30 32 40 48 56 64 80 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]; % length 42
Pitch24Gear = [12 14 15 16 18 20 21 24 30 36 42 48 60 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]; % length 42
Pitch20Gear = [5 6 8 10 11 12 13 14 15 16 18 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50]; %length 42
Length = 42;
n=3;

GearMatrix = [Pitch32Gear;Pitch24Gear;Pitch20Gear];
SqauareMatrix = MatrixSquare(GearMatrix,Length,n);

OptionMatrix = RatioMatrixCalc(SqauareMatrix,Length,n);

LowLim = 0.033075;
HighLim = 0.033095;


ValidOption = OptionMatrix>LowLim & OptionMatrix <=HighLim;



[Z,R,C,H,T] = ind2sub(size(ValidOption),find(ValidOption ==1));




