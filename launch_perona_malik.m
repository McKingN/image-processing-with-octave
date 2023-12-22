close all, clear, clc
I = double(imread("lena.jpg"));
%I= imread("bruit_gaussien_lena.jpg");
s=20;
I_bruit = gaussian_noise(I,s);
colormap gray;
imagesc(I_bruit);
alpha = 1;
n = 50;
deltaT = 1;
Y = perona_malik_equation(I_bruit, alpha, deltaT, n);
figure(2);
colormap gray;
imagesc(Y);

