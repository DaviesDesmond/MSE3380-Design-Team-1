m1 = 3.6432E-06;
b1 = 0;

m2 = 9.34145E-08;
b2 = 0;

m3 = -9.34145E-08;
b3 = 3.62486E-06;

m4 = -3.63956E-06;
b4 = 0.000141324;



%matrix of slopes
m = [m1 m2 m3 m4];

%matrix of intercepts
b = [b1 b2 b3 b4];

%matrix of signigicant x values
x = [0 10 10 19.425 19.425 28.82 28.82 38.82];

%input
xteststart = 1; % in mm 
totA = 6.903E-3;
accuracy = 0.000019;
totallength = 40; % in mm


numArea = length(m);
Asum = 0;
y = zeros(1,length(x));
xNoSlope = 0;

NegAreas = 0;

for xtest = xteststart:totallength

    for i=1:numArea
        a = x(2*i)
         if (x(2*i)<xtest)
            %integral method
              Apt2 = m(i)*x(2*i)*x(2*i)/2 + b(i)*x(2*i);
              Apt1 = m(i)*x(2*i-1)*x(2*i-1)/2 + b(i)*x(2*i-1);
              Apart = Apt2 - Apt1
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












