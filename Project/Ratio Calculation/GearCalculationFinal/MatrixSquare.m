function [FinalMatrix] = MatrixSquare(Gears,L,N);
for a = 1:N
    for b = 1:L
        for c = 1:L
            FinalMatrix(a,b,c) = Gears(a,b)/Gears(a,c);
        end
    end
end
end

