clear all
clc
matrix = this();
picture = imagesc(matrix); % Display correlation matrix as an image
% info = picture.
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
shading interp;

[X,Y] = meshgrid([1:3],[1:31]);  %// mesh of indices

cmap = interp2(X([1,16,31],:),Y([1,16,31],:),cmap,X,Y); %// interpolate colormap

map1 = cmap(1:15,:);
map2 = cmap(17:end,:); 
new = ones(20,3);
cmap = [map1;new;map2];

colormap(cmap) %// set color map
colorbar
caxis([-1 1])
colorbar ('eastoutside');


