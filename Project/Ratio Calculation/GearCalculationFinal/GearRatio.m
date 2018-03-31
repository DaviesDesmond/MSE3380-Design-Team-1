clear
clc %house keeping

%-------------------------------------------------------------------------%
%Enter all the different numbers of teeth for each pitch, each in their own
%array. Zeroes are added at the ends of arrays so that all are the same
%length
%-------------------------------------------------------------------------%
Pitch32 = [16 18 20 22 24 26 28 30 32 40 48 56 64 80 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Pitch24 = [12 14 15 16 18 20 21 24 30 36 42 48 60 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Pitch20 = [5 6 8 10 11 12 13 14 15 16 18 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50];
Length = 42; %length of the longest tooth array
n=3; %number of tooth arrays

LowLim = 0.033075;%lowest ration looked for
HighLim = 0.03309;%highest ration looked for

%Combination of all gear tooth arrays
GearMatrix = [Pitch32;Pitch24;Pitch20];

%End of inputs
%-------------------------------------------------------------------------%

%takes each value of tooth at a specific pitch, and divide it by every
%other tooth of the same pitch
SqauareMatrix = MatrixSquare(GearMatrix,Length,n);

%Multiplies each combination of 2 layers of gear together into an overal
%matrix
OptionMatrix = RatioMatrixCalc(SqauareMatrix,Length,n);

%finds all combinations in the acceptable range
ValidOption = OptionMatrix>LowLim & OptionMatrix <=HighLim;

[Layer,G1,G2,G3,G4] = ind2sub(size(ValidOption),find(ValidOption ==1));

Values = zeros(length(Layer),4);
for i = 1:length(Layer)
    if Layer(i)==1
        Values(i,1) = Pitch32(G1(i));
        Values(i,2) = Pitch32(G2(i));
        Values(i,3) = Pitch32(G3(i));
        Values(i,4) = Pitch32(G4(i));
    elseif Layer(i)==2
        Values(i,1) = Pitch23(G1(i));
        Values(i,2) = Pitch24(G2(i));
        Values(i,3) = Pitch32(G3(i));
        Values(i,4) = Pitch32(G4(i));
    elseif Layer(i)==3
        Values(i,1) = Pitch24(G1(i));
        Values(i,2) = Pitch24(G2(i));
        Values(i,3) = Pitch24(G3(i));
        Values(i,4) = Pitch24(G4(i));
    elseif Layer(i)==4
        Values(i,1) = Pitch20(G1(i));
        Values(i,2) = Pitch20(G2(i));
        Values(i,3) = Pitch32(G3(i));
        Values(i,4) = Pitch32(G4(i));
    elseif Layer(i)==5
        Values(i,1) = Pitch20(G1(i));
        Values(i,2) = Pitch20(G2(i));
        Values(i,3) = Pitch24(G3(i));
        Values(i,4) = Pitch24(G4(i));
    elseif Layer(i)==6
        Values(i,1) = Pitch20(G1(i));
        Values(i,2) = Pitch20(G2(i));
        Values(i,3) = Pitch20(G3(i));
        Values(i,4) = Pitch20(G4(i));
    end
end
