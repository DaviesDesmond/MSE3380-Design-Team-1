function [e] = eFunc(Fa, Co)

FaOverCo = FaOverCoFunc(Fa,Co);

%Create the corresponding e value from Table 11-1.

if FaOverCo == 0.014
    e = 0.19;
end
if FaOverCo == 0.021
    e = 0.21;
end
if FaOverCo == 0.028
    e = 0.22;
end
if FaOverCo == 0.042
    e = 0.24;
end
if FaOverCo == 0.056
    e = 0.26;
end
if FaOverCo == 0.070
    e = 0.27;
end
if FaOverCo == 0.084
    e = 0.28;
end
if FaOverCo == 0.110
    e = 0.30;
end
if FaOverCo == 0.17
    e = 0.34;
end
if FaOverCo == 0.28
    e = 0.38;
end
if FaOverCo == 0.42
    e = 0.42;
end
if FaOverCo == 0.56
    e = 0.44;
end
end