function [ka] = ka_func(Sut, finish)
%Sut - Sut in MPa
% finish:
%  1 - Ground
%  2 - Machined or cold-drawn
%  3 - Hot-rolled
%  4 - As-forged
table = [1.58 -0.085;4.51 -0.265;57.7 -0.718;272 -0.995];
ka = (table(finish,1)*Sut)^table(finish,2);
end

