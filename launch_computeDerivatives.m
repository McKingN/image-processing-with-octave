close all, clear clc
I = imread("lena.jpg");
colormap gray;
imagesc(I);
[I_x, I_y] = compute_derivatives(I);
figure(2);
colormap gray;
imagesc(I_x);
figure(3);
colormap gray;
imagesc(I_y);

