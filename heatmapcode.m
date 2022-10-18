
imagesc(matrix); % Display correlation matrix as an image

ax = gca;
load('namess.mat'); % numeric array with the brain regions names
ax.XTickLabel = names;
ax.YTickLabel = names;
ax.XAxisLocation = 'top';
title('text', 'FontSize', 45);
n = 50;                %// number of colors

cmap(1,:) = [0 0 1];   %// color first row - blue
cmap(2,:) = [1 1 1];   %// color 25th row - white
cmap(3,:) = [1 0 0];   %// color 50th row - red

[X,Y] = meshgrid([1:3],[1:50]);  %// mesh of indices

cmap = interp2(X([1,25,50],:),Y([1,25,50],:),cmap,X,Y); %// interpolate colormap
colormap(cmap) %// set color map
colorbar
caxis([-1 1])
colorbar (eastoutside);



