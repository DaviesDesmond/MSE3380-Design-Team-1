function [Yz] = Yzfunc(reli)
if reli == 0.9999
    Yz = 1.50;
elseif reli == 0.999
    Yz = 1.25;
elseif reli == 0.99
    Yz = 1;
elseif reli == 0.90
    Yz = 0.85;
elseif reli == 0.50
    Yz = 0.7;
else
    error('Yz function can not interpolate or extrapolate, please enter 0.9999, 0.999, 0.99, 0.90 or 0.50')
end

