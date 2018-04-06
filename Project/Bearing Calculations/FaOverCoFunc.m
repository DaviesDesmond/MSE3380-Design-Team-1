function [FaOverCoo] = FaOverCoFunc(Fa, Co)
FaOverCo = Fa/Co;
if (FaOverCo < 0) || (FaOverCo >= 0.60)
    error('You have entered an invalid number for either Fa or Co.')
elseif FaOverCo == 0
    FaOverCoo = 0;
    
elseif (FaOverCo > 0) && (FaOverCo < 0.018)
    FaOverCoo = 0.014;

elseif (FaOverCo >= 0.018)&& (FaOverCo < 0.025)
    FaOverCoo = 0.021;

elseif (FaOverCo >= 0.025)&& (FaOverCo < 0.037)
    FaOverCoo = 0.028;

elseif (FaOverCo >= 0.037)&& (FaOverCo < 0.049)
    FaOverCoo = 0.042;

elseif (FaOverCo >= 0.049)&& (FaOverCo < 0.063)
    FaOverCoo = 0.056;

elseif (FaOverCo >= 0.063)&& (FaOverCo < 0.077)
    FaOverCoo = 0.070;

elseif (FaOverCo >= 0.077)&& (FaOverCo < 0.097)
    FaOverCoo = 0.084;

elseif (FaOverCo >= 0.097)&& (FaOverCo < 0.14)
    FaOverCoo = 0.11;

elseif (FaOverCo >= 0.14)&& (FaOverCo < 0.225)
    FaOverCoo = 0.17;

elseif (FaOverCo >= 0.225)&& (FaOverCo < 0.35)
    FaOverCoo = 0.28;

elseif (FaOverCo >= 0.35)&& (FaOverCo < 0.49)
    FaOverCoo = 0.42;

elseif (FaOverCo >= 0.49)&& (FaOverCo < 0.60)
    FaOverCoo = 0.56;
end
end