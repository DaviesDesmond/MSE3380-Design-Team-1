function [Kfs] = Kfs_func(Kts,qs)
% Kts - look up in appendix A-15 (16?)
% qs - lookup on page 304 shigely
Kfs = 1+qs*(Kts-1);
end

