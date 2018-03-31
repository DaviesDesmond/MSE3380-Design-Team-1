function [FOS,FOS_torsion,FOS_yield] = shafts(Sut,finish,d,loading,temp,reliability,Kt_bend,q_bend,Kt_axial,q_axial,Kts,qs,sigma_bending_max,sigma_bending_min,sigma_axial_max,sigma_axial_min,torque_max,torque_min)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
Se = Se_func(Sut,finish,d,loading,temp,reliability);
Kf_bend = Kf_func(Kt_bend,q_bend);
Kf_axial = Kf_func(Kt_axial,q_axial);
Kfs = Kfs_func(Kts,qs);
[sigma_a_bend,sigma_m_bend]=amp_median_calc(sigma_bending_max,sigma_bending_min);
[sigma_a_axial,sigma_m_axial]=amp_median_calc(sigma_axial_max,sigma_axial_min);
[Ta,Tm]=amp_median_calc(torque_max,torque_min);
siga_prime = sigma_a_prime_func(Kf_bend,Kf_axial,sigma_a_bend,sigma_a_axial,Kfs,Ta);
sigm_prime = sigma_m_prime_func(Kfs_bend,Kf_axial,sigma_m_bend,sigma_m_axial,Kfs,Tm);
[FOS,FOS_torsion]=modGoodman_fos_func(siga_prime,sigm_prime,taua,taum,Se,Sut);
FOS_yield = Local_yield_FOS_func(Sy,siga_prime,sigm_prime);
end

