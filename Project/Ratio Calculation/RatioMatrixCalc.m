function [output] = RatioMatrixCalc(SquareMatrix,L,n);
x=0;
for a = 1:n
    for b = 1:a
        x=x+1;
        for c = 1:L
            for d = 1:L
                for e = 1:L
                    for f = 1:L
                        output(x,c,d,e,f) = SquareMatrix(a,c,d)*SquareMatrix(b,e,f);
                    end
                end
            end
        end
    end
end

end

