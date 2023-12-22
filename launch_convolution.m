close all, clear, clc
I = double(imread("lena.jpg"));
% Don’t forget to load the octave package image processing
% for fspecial and imfilter!
colormap gray;
imagesc(I);
[I_x, I_y] = compute_derivatives(I);
figure(2);
colormap gray;
imagesc(I_x);
pkg load image
% try for sigma =1, 3, 10, 15
sigma = 3;
k= fspecial("gaussian", sigma);
% Convolution k*I where I is an image
Iconv = imfilter(I_x, k, 'conv', 'symmetric');
figure(3);
colormap gray;
imagesc(Iconv);

