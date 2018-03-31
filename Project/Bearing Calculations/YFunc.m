function [Y] = YFunc (i, FaOverCo)
%This function determines the Y value for Fe. 

if i == 1
    Y = 0;
end

if i == 2
    %The Y value will be found in the following if statements.
    if FaOverCo == 0.014
        Y = 2.30;
    end
    if FaOverCo == 0.021
        Y = 2.15;
    end
    if FaOverCo == 0.028
        Y = 1.99;
    end
    if FaOverCo == 0.042
        Y = 1.85;
    end
    if FaOverCo == 0.056
        Y = 1.71;
    end
    if FaOverCo == 0.070
        Y = 1.63;
    end
    if FaOverCo == 0.084
        Y = 1.55;
    end
    if FaOverCo == 0.110
        Y = 1.45;
    end
    if FaOverCo == 0.17
        Y = 1.31;
    end
    if FaOverCo == 0.28
        Y = 1.15;
    end
    if FaOverCo == 0.42
        Y = 1.04;
    end
    if FaOverCo == 0.56
        Y = 1.00;
    end
end
end