function Z = circleMatrix_FALSE( diameterInput, diameterOutput )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

x = 1:diameterInput+1;
x = (pi().*x)/(diameterInput+1);
Z = sqrt(sin(x)'*sin(x));
Z = Z(1:end-1,1:end-1);
% sinVal = sin(pi()*diameterOutput/diameterInput)^2;
rVal = size(Z,1)/2;
sinVal = Z(1,rVal);
Z = Z > sinVal;
imagesc(Z)


end

