I = imread("peppers.png");
imshow(I);
figure;
ntscimage = rgb2ntsc(I);
imshow(ntscimage);
I2 = ntsc2rgb(ntscimage);
figure;
imshow(I2);