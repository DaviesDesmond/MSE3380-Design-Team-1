function [Kv] = Kvfunc(V,KvFactor)
%see page 731
%V: pitch-line velocity in m/s
%V=V*(10^-3);
if KvFactor == 1
    A = 3.05;
    Kv = ((A+V)/A);
elseif KvFactor == 2
    A = 6.1;
    Kv = ((A+V)/A);
    return
elseif KvFactor == 3
    Kv = ((3.56+sqrt(V))/3.56);
    return
elseif KvFactor == 4
    Kv = sqrt((5.56+sqrt(V))/5.56);
    return
elseif KvFactor == 5
    Kv = 1.099; %this is an added statement for GearTest
    return
elseif (KvFactor>5)||(KvFactor<1)
    error('Invalid Kv Factor')
end
end

