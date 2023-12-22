close all, clear, clc
%I = double(imread("lena.jpg"));
I= imread("lena.jpg");
colormap gray;
imagesc(I);
[I_xx, I_yy, I_xy] = compute_2derivatives(I);
figure(2);
colormap gray;
imagesc(I_xx);
figure(3);
colormap gray;
imagesc(I_yy);
figure(4);
colormap gray;
imagesc(I_xy);

