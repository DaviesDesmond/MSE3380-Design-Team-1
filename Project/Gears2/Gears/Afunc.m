function [A] = Afunc(H)
if H < 1.2
    A = 0;
end 
if  H >=1.2 && H <= 1.7
    A = (8.98*(0.001)*H)-(8.29*0.001);
end
if H > 1.7
    A = 0.00698;
end
end
