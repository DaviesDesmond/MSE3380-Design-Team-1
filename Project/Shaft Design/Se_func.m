function [Se_prime] = Se_func(Sut)
%Sut - Sut in MPa
if Sut <=1400
    Se_prime = Sut/2;
else
    Se_prime = 700;
end
end

