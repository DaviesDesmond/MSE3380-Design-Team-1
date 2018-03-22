function [J] = jfunc(J_lookup)
% J - bending strength geometry factor
% See page 745 in Shigley for a chart to obtain J.
% Y - form factor
% Kf - reduced fatigue stress-concentration factor
% mn - load-sharing ratio
% pn - normal base pitch
% Z - length of the line of action in the transverse plane
% q - notch sensitivity. Use pg 303 (reversed bending/axial loads) or pg
% 304 (reversed torsion. If it is questionable, let Kf = Kt.
% Kt - fatigue stress-concentration factor. See page 365 for Kt bending
% factors.
%Y not found in shigley, use table
% Kf = 1+q*(Kt -1)
% mn = pn/(0.95*Z)
% J = Y/(Kf*mn)
J = J_lookup;
end
