function [Km] = KmFunc(crown_km,F,d_km,gearcond_km,Ce_accomadation_Km)
% crown: is the gear crowned
%  - 1: crowned
%  - 0: uncrowned
% b: facewidth (mm)
% d: diameter (mm)
% gearcond: condition of gear
%  - 1: open gearing
%  - 2: commercial, enclosed unit
%  - 3: Precision, enclosed units
%  - 4: Extraprecision, enclosed gear unit
% Ce_accomidation:  gear adjusted at assembly, or compatibility is improved by lapping, or both
%  - 1: true
%  - 0: false

Cmc = cmcfunc(crown_km);
Cpf = cpffunc(F,d_km);
Cpm = cpmfunc();%returns 1, need to work out variables later, 1 is minimum value
Cma = cmafunc(gearcond_km,F);
Ce = cefunc(Ce_accomadation_Km);
Km = 1 + Cmc*(Cpf*Cpm + Cma*Ce);
end

function [Cmc] = cmcfunc(crown_cmc)
if crown_cmc == 0
    Cmc = 1;
elseif crown_cmc == 1
    Cmc = 0.8;
else
    error('crown invalid input, try 1 or 0')
end
end
function [Cpf] = cpffunc(b_cpf,d_cpf)
num = b_cpf/(10*d_cpf);
% if num < 0.05
%     num = 0.05;
% end; don't know if this needs to be done, in shigley pg 752 if F/10d <
% 0.05 then F/10d = 0.05, not sure if translates to metric
if b_cpf <= 0
    error('b less than 0')
elseif b_cpf <= 25
    Cpf = num -0.025;
elseif b_cpf <=425
    Cpf = num-0.0375+4.92*(10^-4)*b_cpf;
elseif b_cpf <= 1000
    Cpf = num-0.1109+(8.15*(10^-4)*b_cpf)-(3.53*(10^-7)*(b_cpf^2));
else
   error('b greater than 1000mm is out of scope') 
end
end
function [Cpm] = cpmfunc()
Cpm = 1;

end
function [Cma] = cmafunc(gearcond_cmaa,F)
cma_table = [0.247 0.0167 -0.765*10^-4;0.127 0.0158 -0.930*10^-4;0.0675 0.0123 -0.926*10^-4;0.0036 0.0102 -0.822*10^-4];
A = cma_table(gearcond_cmaa,1);
B = cma_table(gearcond_cmaa,2);
C = cma_table(gearcond_cmaa,3);
Cma = A + B*F + C*(F^2);
end
function [Ce] = cefunc(Ce_accomadation_ce)
if Ce_accomadation_ce == 0
    Ce = 1;
elseif Ce_accomadation_ce == 1
    Ce = 0.8;
else
    error('Ce_accomadation invalid, must be 0 or 1')
end
end