I1 = imread("moon.tif");
imshow(I1)
I2 = imadjust(I1,[0,1],[1,0]);
figure;
imshow(I2);