function [sigma_m_prime] = sigma_m_prime_func(Kf_bend,Kf_axial,sigma_a_bend,sigma_a_axial,Kfs,Tm)
P1 = (Kf_bend*sigma_a_bend)+(Kf_axial*sigma_a_axial);
P2 = (Kfs*Tm);
sigma_m_prime = ((P1^2)+ 3*(P2^2))^0.5;
end

