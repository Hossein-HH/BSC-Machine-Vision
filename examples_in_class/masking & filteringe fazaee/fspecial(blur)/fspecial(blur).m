I1 = imread('peppers.png');
imshow(I1);
mask = fspecial('motion',50,45);
I2 = imfilter(I1,mask);
figure;
imshow(I2);