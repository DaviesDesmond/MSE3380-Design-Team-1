function [Option] = OptionMakerSquare(Square1,Square2, size)
    for a = 1:size
        for late = 1:size
            for d = 1:size
                for e = 1:size
                    Option(a,late,d,e) = Square1(a,late)*Square2(d,e);
                end
            end
        end
    end
end

