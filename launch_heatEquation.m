close all, clear, clc
I = double(imread("lena.jpg"));
%I= imread("bruit_gaussien_lena.jpg");
s=20;
I_bruit = gaussian_noise(I,s);
colormap gray;
imagesc(I_bruit);
deltaT = 0.2;
n = 50;
Y = heat_equation(I_bruit, deltaT, n);
figure(2);
colormap gray;
imagesc(Y);
imwrite(Y, 'result_heat_equation.jpg');

