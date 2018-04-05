function [amp,median] = amp_median_calc(max,min)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
amp = abs((max-min)/2);
median = (max+min)/2;
end

