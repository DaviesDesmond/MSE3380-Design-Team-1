function [Kf] = Kf_func(Kt,q)
% Kt - look up in appendix A-15
% q - lookup on page 303 shigely
Kf = 1+q*(Kt-1);
end

