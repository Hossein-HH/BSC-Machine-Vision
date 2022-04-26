%?  gamma < 1 ===> roshan tar mikonad

I1 = imread("moon.tif");
imshow(I1)
I2 = imadjust(I1,[],[],0.5);
figure;
imshow(I2);

%?  gamma > 1 ===> tarik tar mikonad

I1 = imread("moon.tif");
imshow(I1)
I2 = imadjust(I1,[],[],2);
figure;
imshow(I2);