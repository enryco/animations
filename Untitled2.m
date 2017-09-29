figure('Renderer','zbuffer')
scrsz = get(0,'ScreenSize');
figure('Position',[scrsz(3)/4 scrsz(4)/4 scrsz(3)/2 scrsz(4)/2])
axis([0 15 0 15 -10 1]);
axis manual
axis off
grid off
whitebg('black')
set(gca,'NextPlot','replaceChildren');
A = rand(15);
F(500) = struct('cdata',[],'colormap',[]);
% hold on
for j = 1:150
    surf(A*j/10-j/15);
    colormap bone
    F(j) = getframe;
end
for j = 1:150 
    surf(A*-(j-150)/10-10);
%     surf((rand(9)/2)*-(j-41)/2-10);
    colormap bone
    F(j+150) = getframe;
end
for j = 301:500
    surf(rand(15)*+(j-301)/20-10);
%     surf((rand(9)/2)*-(j-41)/2-10);
    colormap bone
    F(j) = getframe;
end

% movie(F(1:81),10,30)
% movie2avi(F,'untitled22.avi','fps',25,'compression','none');
movie2avi(F,'untitled22.avi','fps',25,'compression','MSVC');
close all;