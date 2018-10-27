clear;
close all;
clc;

I = imread(input('Enter image loaction:\n'));

J = im2bw(compass_op(I));
figure,imshow(J)
J = dilation_f(J);
J = erosion_f(J);
J = imfill(J, 'holes');
J = erosion_f(J);

figure,imshow(J);