clear all;
close all;
clc;
pontos = fopen('pontos.txt', 'w');
image = imread('mdb055.pgm');
imshow(image);
points = 9;
[xd, yd] = ginput(points);
[xf, yf] = ginput(points);
labels = zeros(points);
for i = 1:points
    fprintf(pontos, '%d\f%d\n', round(xd(i)), round(yd(i)));
end

for i = 1:points
    fprintf(pontos, '%d\f%d\n', round(xf(i)), round(yf(i)));
end
output = growcutreader(image, labels);
fclose(pontos);