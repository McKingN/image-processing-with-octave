X = imread("lena.jpg");
imshow(X);
d = min(size(X));
B = boundary(X, d);
figure(2);
imagesc(B);
colormap gray;
