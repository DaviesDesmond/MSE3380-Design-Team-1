%function to find Af.

function [Af] = AfFunc()
%The value of a can be tailored to the type of loading that the bearings
%will be undergoing.

%Precision Gearing - 1.0-1.1
%Commercial Gearning - 1.1-1.3
%Applications with poor bearing seals - 1.2
%Machinery with no impact - 1.0-1.2
%Machinery with light impact - 1.2-1.5
%Machinery with moderate impact - 1.5-3.0

Af = 1.5;
end
