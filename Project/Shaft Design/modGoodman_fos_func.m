function [FOS, FOS_torsion] = modGoodman_fos_func(siga,sigm,taua,taum,Se,Sut)
% sta/stm - sigma OR tau values
FOS = ((siga/Se)+(sigm/Sut))^-1;
FOS_torsion = ((taua/Se)+(taum/Sut))^-1;
end

