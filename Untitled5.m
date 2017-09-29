clc; close all; clear all;

figure('Renderer','zbuffer')
scrsz = get(0,'ScreenSize');
figure('Position',[0 0 scrsz(3)/2 scrsz(4)/2]) %rect = [left, bottom, width, height]
axis([0 15 0 15 -1 1]);
axis manual
axis off
grid off
whitebg('black')
set(gca,'NextPlot','replaceChildren');

gridSize = 16; % GRID SIZE
frameSize = 450; % Frame Size

A = rand(gridSize);
A = zeros(gridSize);
F(frameSize) = struct('cdata',[],'colormap',[]);
% hold on
Z = circleMatrix(gridSize);

for j = 1:frameSize
    for i = 1:(gridSize^2)
        A(i) = sin(pi()*(i+j/10)/2.76)/10;
    end
    
    %     A = A.*Z;
%     k = 4;
%     n = 2^k-1;
%     [x,y,z] = sphere(n);
    hSurf = surf(A,'EdgeColor','none','LineStyle','none','FaceLighting','phong');
%     direction = [0 0 1];
    %rotate(hSurf,direction,j*0.4);
    view(1,45*sin(4*j*pi()/frameSize));
    %     colormap winter
    colorMapVec = [rand(1,10);rand(1,10);1:10]'/10;
    colormap(colorMapVec);
    F(j) = getframe;
    
end

% movie(F,1,40);
movie2avi(F, 'test2.avi', 'compression', 'None', 'fps', 25);
close all;