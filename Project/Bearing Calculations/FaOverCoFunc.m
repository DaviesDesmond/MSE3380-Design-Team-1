function [FaOverCoo] = FaOverCoFunc(Fa, Co)
FaOverCo = Fa/Co;
if (FaOverCo < 0) || (FaOverCo >= 0.60)
    disp('You have entered an invalid number for either Fa or Co.')
end
if (FaOverCo >= 0) && (FaOverCo < 0.018)
    FaOverCoo = 0.014;
end
if (FaOverCo >= 0.018)&& (FaOverCo < 0.025)
    FaOverCoo = 0.021;
end
if (FaOverCo >= 0.025)&& (FaOverCo < 0.037)
    FaOverCoo = 0.028;
end
if (FaOverCo >= 0.037)&& (FaOverCo < 0.049)
    FaOverCoo = 0.042;
end
if (FaOverCo >= 0.049)&& (FaOverCo < 0.063)
    FaOverCoo = 0.056;
end
if (FaOverCo >= 0.063)&& (FaOverCo < 0.077)
    FaOverCoo = 0.070;
end
if (FaOverCo >= 0.077)&& (FaOverCo < 0.097)
    FaOverCoo = 0.084;
end
if (FaOverCo >= 0.097)&& (FaOverCo < 0.14)
    FaOverCoo = 0.11;
end
if (FaOverCo >= 0.14)&& (FaOverCo < 0.225)
    FaOverCoo = 0.17;
end
if (FaOverCo >= 0.225)&& (FaOverCo < 0.35)
    FaOverCoo = 0.28;
end
if (FaOverCo >= 0.35)&& (FaOverCo < 0.49)
    FaOverCoo = 0.42;
end
if (FaOverCo >= 0.49)&& (FaOverCo < 0.60)
    FaOverCoo = 0.56;
end
end