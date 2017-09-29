function [ Z ] = circleMatrix( diameter )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

D = round(diameter);
D = D-mod(D,2);
r = D/2;
Z = zeros(D+1);

for i=-r:r
    for j=-r:r
        if (i/r)^2+(j/r)^2 < 1
            Z(i+r+1,j+r+1) = 1;
        end
    end
end

imagesc(Z)

end

