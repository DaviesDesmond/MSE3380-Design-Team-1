function [ lneedShear, FOSshear ] = shearFailure( forceOnKey, width, yeildStrength, designFOS, length )
%This function calculates the required lenght of a keyway to avoid faliure
    %takes in designFOS, height and yield strength, force on keyway
    
    F = forceOnKey;
    w = width; %in m
    Sy = yeildStrength; % in MPa
    nd = designFOS;
    l = length; % in m
    
    ShearSy = 0.557*Sy;
    
    lneedShear = F*nd/(w*ShearSy);
    
    FOSshear = l*w*ShearSy/F; 

end

