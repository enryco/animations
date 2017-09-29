clc; close all; clear all;

figure('Renderer','zbuffer')
scrsz = get(0,'ScreenSize');
figure('Position',[0 0 scrsz(3)/2 scrsz(4)/2]) %rect = [left, bottom, width, height]
axis([0 1 0 1 0 1]);
axis manual
axis off
grid off
whitebg('black')
set(gca,'NextPlot','replaceChildren');

gridSize = 16; % GRID SIZE
frameSize = 500; % Frame Size

A = rand(gridSize);
A = zeros(gridSize);
F(frameSize) = struct('cdata',[],'colormap',[]);
% hold on
Z = circleMatrix(gridSize);
x = rand(gridSize);
y = rand(gridSize);


for j = 1:frameSize
    z = rand(gridSize);
    z = z-j/frameSize;
    hSurf = surf(x,y,z,'EdgeColor','none','LineStyle','none','FaceLighting','phong');
    %     direction = [0 0 1];
    %rotate(hSurf,direction,j*0.4);
    %     view(1,90-(j*90/2)/225);
    %         colormap winter
    colorMapVec = [rand(1,10);rand(1,10);1:10]'/10;
    colormap(colorMapVec);
    F(j) = getframe;
    
end

movie2avi(F,'untitled4.avi','fps',25,'compression','none');
close all;