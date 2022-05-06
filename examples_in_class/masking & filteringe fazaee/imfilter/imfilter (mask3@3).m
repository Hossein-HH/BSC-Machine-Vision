I1 = imread('peppers.png');
imshow(I1);
mask = ones(3);
I2 = imfilter(I1,mask);
figure;
imshow(I2);