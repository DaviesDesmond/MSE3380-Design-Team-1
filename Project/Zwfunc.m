function [Zw] = Zwfunc(pinion,Hp,Hg,mg)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
if pinion == 0
    ratio = Hp/Hg;
    A = 8.98*(10^-3)*(ratio)- 8.29*(10^-3);
    if ratio < 1.2
        A = 0
    elseif ration > 1.7
        A = 0.00698
    end
    Zw = 1 + A*(mg-1);
elseif pinion == 1
    Zw = 1;
else
    error('Zw')
end
end

