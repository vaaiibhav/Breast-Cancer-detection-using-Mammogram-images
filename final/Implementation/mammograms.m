
clc
close all
clear all
img= imread('mdb001.pgm');
img_median=medfilt2(img,[10,10]);  % apply median filter to the image
max_pixel=max(max(img_median));
min_pixel=min(min(img_median));
new_max_pixel=210;
new_min_pixel=60;
temp= (new_max_pixel - new_min_pixel)/(max_pixel - min_pixel);
normalize_img = (temp.*(img_median - min_pixel)) + new_min_pixel;  % normalize the image
threshold= graythresh(normalize_img);

figure,imshow(img_median);

