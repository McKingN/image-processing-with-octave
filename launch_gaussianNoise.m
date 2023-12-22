X = imread("lena.jpg"); %reading original image
imshow(X);
s=100;
retval = gaussian_noise(X,s); %adding noise to original image
figure(2); %Dispalying a second figure
imshow(retval); %Displaying noise image
imwrite(uint8(retval), 'bruit_gaussien_lena.jpg');

