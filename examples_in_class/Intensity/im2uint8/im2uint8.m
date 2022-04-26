%? this code show to us more details in images

%? log in im2uint8
I1 = imread("moon.tif");
imshow(I1)

I2 = im2uint8(log(j+double(I1)));
%? the j no need to define 

figure;
imshow(I2);