function [Cp] = cpfunc(gearmaterial_cp,pinionmaterial_cp)
% for gearmaterial and pinionmaterial: material (Modulus of Elasticity*10^5)
%  - 1: Steel(2)
%  - 2: Malleable iron (1.7)
%  - 3: Nodular iron (1.7)
%  - 4: Cast iron (1.5)
%  - 5: Aluminum bronze (1.2)
%  - 6: Tin Bronze (1.1)
cp_table = [191 181 179 174 162 158;181 174 172 168 158 154;179 172 170 166 156 152;174 168 166 163 154 149;162 158 156 154 145 141;158 154 152 149 141 137];
Cp = cp_table(gearmaterial_cp,pinionmaterial_cp);
end

