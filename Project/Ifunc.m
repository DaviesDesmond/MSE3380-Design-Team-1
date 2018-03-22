function [I] = Ifunc(angle,mg,inout)
I = cos(angle)*sin(angle)*mg/(2*(mg+inout));
end