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

figure('Position',[100 100 850 600])
Z = peaks; surf(Z); 
axis tight
set(gca,'NextPlot','replacechildren');
% Record the movie
for j = 1:20 
    surf(sin(2*pi*j/20)*Z,Z)
    F(j) = getframe;
end
% use 1st frame to get dimensions
[h, w, p] = size(F(1).cdata);
hf = figure; 
% resize figure based on frame's w x h, and place at (150, 150)
set(hf,'Position', [150 150 w h]);
axis off
% Place frames at bottom left
movie(hf,F,4,30,[0 0 0 0]);