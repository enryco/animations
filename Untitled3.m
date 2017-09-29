figure('Renderer','zbuffer')
scrsz = get(0,'ScreenSize');
figure('Position',[scrsz(3)/4 scrsz(4)/4 scrsz(3)/2 scrsz(4)/2])
axis([0 10 0 10 -10 1]);
axis manual
axis off
grid off
whitebg('black')
set(gca,'NextPlot','replaceChildren');
A = rand(9);
F(80) = struct('cdata',[],'colormap',[]);
% hold on
for j = 1:40
%     A(3:6,3:6) = rand(4)+j/40;
    surf(rand(9)*j/2-10);
    colormap bone
    F(j) = getframe;
end
for j = 1:40 
    surf((rand(9)/2)*-(j-41)/2-10);
    colormap bone
    F(j+40) = getframe;
end

movie(F,10,25)
% movie2avi(F,'untitled3.avi','fps',25,'compression','none');
close all;