figure('Renderer','zbuffer')
scrsz = get(0,'ScreenSize');
figure('Position',[scrsz(3)/4 scrsz(4)/4 scrsz(3)/2 scrsz(4)/2])
% axis([0 10 0 10 -10 1]);
% axis manual
axis off
grid off
whitebg('black')
set(gca,'NextPlot','replaceChildren');
A = rand(1);
F(80) = struct('cdata',[],'colormap',[]);
% hold on
for j = 1:80
%     A(3:6,3:6) = rand(4)+j/40;
    surf(rand(j+1)/10-j);
    colormap summer
    F(j) = getframe;
end
% for j = 41:80 
%     surf(rand(j+1)-j);
%     colormap summer
%     F(j) = getframe;
% end

movie(F,10,30)