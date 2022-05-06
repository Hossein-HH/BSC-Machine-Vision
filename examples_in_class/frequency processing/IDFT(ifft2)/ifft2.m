I1 = imread('tire.tif');
imshow(I1);
I2 = fft2(I1);
I3 = ifft2(I2);
figure;
imshow(I3);