function [ke] = ke_func(R)
%R - reliability as a decimal (ex 90% = 0.9)
ke = 1 - 0.08*norminv(R);
end

