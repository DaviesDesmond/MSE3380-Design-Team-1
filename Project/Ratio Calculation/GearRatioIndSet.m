function [GRSet] = GearRatioIndSet(GearNTeethSet)
    for b = 1:length(GearNTeethSet)
        for c = 1:length(GearNTeethSet)
            GRSet(b,c) = GearNTeethSet(b)/GearNTeethSet(c);
        end
    end
end