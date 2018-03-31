function [kd] = kd_func(temp)
%temp - temperature in C
tf = (temp*1.8)+32;
kd = 0.975 + 0.432*(10^-3)*tf-0.115*(10^-5)*(tf^2) + 0.104 * (10^-8)*(tf^3) - 0.595*(10^-12)*(tf^4);
end

