r = 100;
A = zeros(10);

for i=1:r
    for j=1:r
        if (i/r)^2+(j/r)^2 < 1
            A(i,j) = 1;
        end
    end
end

imagesc(A)