function [Option] = OptionMaker(NotSquare,Square)
    for a = 1:length(NotSquare)
    %    [b,c] = size(Square)
            for d = 1:21 %1:b
                for e = 1:21 %1:c
                    Option(a,d,e) = NotSquare(a)*Square(d,e);
                end
            end
    end
end