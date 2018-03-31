function [V] = VchoiceFunc(Vchoice)
%Vchoice = 0 if the inner ring is rotating.
%Vchoice = 1 if the outer ring is rotating.
if Vchoice == 0
    V = 1;
end
if Vchoice == 1
    V = 1.2;
end
end