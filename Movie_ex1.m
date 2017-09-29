figure('Renderer','zbuffer')
Z = peaks;
surf(Z); 
axis tight
set(gca,'NextPlot','replaceChildren');
% Preallocate the struct array for the struct returned by getframe
F(20) = struct('cdata',[],'colormap',[]);
% Record the movie
for j = 1:20 
    surf(.01+sin(2*pi*j/20)*Z,Z)
    F(j) = getframe;
end

%creat movie with movie(F,10)