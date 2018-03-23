function [Kb] = kbfunc(tR_kb,ht_kb)
% Kb - Rim-thickness factor. Used when rim thickness is not sufficient to provide full support for the tooth root, in which case failure may occur at the rim. Adjusts estimated bending stress for a thin-rimmed gear.
% mb - backup ratio
% tR - rim thickness (mm)
% ht - tooth height (mm)

mb = tR_kb/ht_kb;

if mb < 1.2
   Kb = 1.6*ln(2.242/mb);
else
    Kb = 1;
end
end