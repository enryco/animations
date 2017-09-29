k = 3;
n = 2^k-1
[x,y,z] = sphere(n);
% c = hadamard(2^k);

figure

grid off
colormap hsv

surf(x,y,z,'FaceColor','interp',...
   'EdgeColor','none',...
   'FaceLighting','gouraud')
daspect([5 5 1])
axis tight
view(-50,30)
% camlight left

% colormap([1  1  0; 1  1  1])
% colormap bone
axis equal