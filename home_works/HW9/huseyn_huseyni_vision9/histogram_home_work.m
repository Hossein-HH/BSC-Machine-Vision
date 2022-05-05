function histogram_home_work()
I1 = rgb2gray(imread('assets/1.jpg'));
I2 = rgb2gray(imread('assets/2.jpg'));
subplot(2,6,2);
imshow(I1);
subplot(2,6,3);
imshow(I2);
subplot(2,6,4);
imshow(I1 - I2);
subplot(2,6,5);
imshow(I1 + I2);
subplot(2,6,11);
imshow(I1 & I2);
subplot(2,6,12);
imshow(I1 | I2);
subplot(2,6,7);
imhist(I1);
subplot(2,6,8);
imhist(I2);
subplot(2,6,9);
imshow(histeq(I1));
subplot(2,6,10);
imshow(histeq(I2));
end

