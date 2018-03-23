function [Option] = OptionMakerSquare(Square1,Square2, size)
for a = 1:size
    for b = 1:size
        for d = 1:size
            for e = 1:size
                Option(a,b,d,e) = Square1(a,b)*Square2(d,e);
            end
        end
    end
end
end

