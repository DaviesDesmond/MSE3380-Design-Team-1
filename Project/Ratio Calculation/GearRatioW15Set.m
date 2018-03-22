function [GRSet] = GearRatioW15Set(GearNTeethSet)
    for a = 1:length(GearNTeethSet)
        GRSet(a) = 15*(1/GearNTeethSet(a));
    end
end