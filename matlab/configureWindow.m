function [fig] = configureWindow( width,height )

fig = figure(1); 
clf;  
axis([0 width 0 height]); 
grid off;  
hold on; 
axis('off')
%axis('vis3d')
fill([0 width width 0], [0 0 height height], 'w');

end