m1 = 8.9082*10^-6;
b1 = 0;

m2 = 1.86532*10^-7;
b2 = 0;

m3 = -2.1428*10^-8;
b3 = 2.08e-6;

m4 = -1.033e-8;
b4 = 1e-6;

m5 = -2.1428e-8;
b5 = -2.08e-6;

m6 = -3.6582e-9;
b6 = 3.91e-7;

m7 = -8.9489e-9;
b7 = 9.58e-7;

%matrix of slopes
m = [m1 m2 m3 m4 m5 m6 m7];

%matrix of intercepts
b = [b1 b2 b3 b4 b5 b6 b7];

%matrix of signigicant x values
x = [0 6.4 6.4 10 10 24 24 60 60 75 75 80 80 87];

%input
xteststart = 30; % in mm 
totA = 5.848E-03;
accuracy = 0.0001;
totallength = 90; % in mm


numArea = length(m);
Asum = 0;
y = zeros(1,length(x));
xNoSlope = 0;

NegAreas = 0;

for xtest = xteststart:totallength

    for i=1:numArea
         if (x(2*i)<xtest)
            %integral method
              Apt2 = m(i)*x(2*i)*x(2*i)/2 + b(i)*x(2*i);
              Apt1 = m(i)*x(2*i-1)*x(2*i-1)/2 + b(i)*x(2*i-1);
              Apart = Apt2 - Apt1;
              Asum = Asum + Apart;
              %NegAreas = Apart
           
         else
              
              Apt2 = m(i)*xtest*xtest/2 + b(i)*xtest;
              Apt1 = m(i)*x(2*i-1)*x(2*i-1)/2 + b(i)*x(2*i-1);
              Apart = Apt2 - Apt1;
              Asum = Asum + Apart;
              NegAreas = Apart
             break 
        end
    end 

%check if we have reached half area
 if (abs((totA - Asum))<accuracy)
     xNoSlope = xtest
     break
 end

end


%Calculate points after point of no slope
%first area
A1 = 0;
for i=1:numArea
    %i = numArea - j +1;
         if (x(2*i)>xNoSlope)
            %integral method
              Apt2 = m(i)*x(2*i)*x(2*i)/2 + b(i)*x(2*i);
              Apt1 = m(i)*xNoSlope*xNoSlope/2 + b(i)*xNoSlope;
              Apos1 = Apt2 - Apt1
              break  
              
         end
end



