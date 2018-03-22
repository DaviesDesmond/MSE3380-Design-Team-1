function [Sc] = Scfunc(Hb, Grade)
if Grade == 1
    Sc = (2.22*Hb)+200;

elseif Grade == 2
   Sc = (2.41*Hb)+237;
else
   error('For Sc, please enter grade 1 or 2, if using table enter value manually')
end
