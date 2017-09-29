clc; close all; clear all;

figure('Renderer','zbuffer')
scrsz = get(0,'ScreenSize');
figure('Position',[5 5 scrsz(3)/2 scrsz(4)/2]) %rect = [left, bottom, width, height]
% axis([0 15 0 15 -1 1]);
% axis manual
axis off
grid off
whitebg('black')
set(gca,'NextPlot','replaceChildren');

gridSizeW = 16; % GRID SIZE Width
gridSizeH = 100; % Grid Hight
frameSize = 450; % Frame Size

A = rand(gridSizeH, gridSizeW);
w = 2;
size = size(A(:,((gridSizeW/2)-w):((gridSizeW/2)+w)));
% A(:,((gridSizeW/2)-w):((gridSizeW/2)+w)) = zeros(size(1),size(2));
F(frameSize) = struct('cdata',[],'colormap',[]);
% hold on
Z = circleMatrix(gridSizeW);

for j = 1:frameSize
    B1 = A(1:end-1,:);
    B2 = rand(1,gridSizeW);
%     B2(((gridSizeW/2)-w):((gridSizeW/2)+w)) = zeros(1,size(2));
    
    A = [B2; B1];
    %     A = A.*Z;
%     k = 4;
%     n = 2^k-1;
%     [x,y,z] = sphere(n);
    hSurf = surf(A,'EdgeColor','none','LineStyle','none','FaceLighting','phong');
%     direction = [0 0 1];
    %rotate(hSurf,direction,j*0.4);
    view(j/2,75);
    %     colormap winter
    colorMapVec = [rand(1,10);rand(1,10);1:10]'/10;
    colormap(colorMapVec);
    F(j) = getframe;
    
end

% movie(F,1,40);
movie2avi(F, 'untitled6.avi', 'compression', 'None', 'fps', 25);
close all;