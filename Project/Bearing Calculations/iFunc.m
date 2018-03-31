function [i] = iFunc(Fa, V, Fr, e)
%This function calculates whether i is 1 or 2.
Placeholder = Fa/(V*Fr);
if Placeholder > e
    i = 2;
end
if Placeholder <= e
    i = 1;
end
end