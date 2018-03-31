function [sigma_a_prime] = sigma_a_prime_func(Kf_bend,Kf_axial,sigma_a_bend,sigma_a_axial,Kfs,Ta)
P1 = (Kf_bend*sigma_a_bend)+(Kf_axial*sigma_a_axial/0.85);
P2 = (Kfs*Ta);
sigma_a_prime = ((P1^2)+ 3*(P2^2))^0.5;
end

