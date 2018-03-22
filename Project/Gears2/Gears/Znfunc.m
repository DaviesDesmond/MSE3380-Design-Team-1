function [Zn] = Znfunc(nitrided,N)
%N is number of load cycles, which varies or each gear based on rpm for it.
if nitrided == 1
    if N < 10^7
        Zn = 1.249*(N^-0.0138);
    else
        Zn = 1.4488*(N^-0.023);
    end
elseif nitrided == 0
    Zn = 2.466*(N^-0.056);
else
    error('for Zn, nitride is a 1 or 0')
end
end
