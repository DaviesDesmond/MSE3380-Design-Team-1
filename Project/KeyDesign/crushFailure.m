function [ lneedcrush, FOScrush ] = crushFailure( forceOnKey, height, yeildStrength, designFOS, length )
%This function calculates the required lenght of a keyway to avoid faliure
    %takes in designFOS, height and yield strength, force on keyway
    
    F = forceOnKey;
    h = height;
    Sy = yeildStrength;
    nd = designFOS;
    l = length;
    
    lneedcrush = 2*F*nd/(h*Sy);
    
    FOScrush = (l*h*Sy)/(2*F);   


end

