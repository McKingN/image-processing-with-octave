close all, clear, clc
I = double(imread("lena.jpg"));
%I= imread("bruit_gaussien_lena.jpg");
s=20;
I_bruit = gaussian_noise(I,s);
colormap gray;
imagesc(I_bruit);
U_0 = I_bruit;
alpha = 0.01;
lambda = 3;
nombre_iterations = 200;
seuil = exp(-100);
phi_name = 'phi_square_root_t';
Y = energy_methods(U_0, alpha, lambda, seuil, phi_name);
figure(2);
colormap gray;
imagesc(Y);
difference_debug = norm(U_0 - Y, 2)
difference_quality = norm(I - Y, 2)

