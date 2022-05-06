function test_ntsc_psnr()
x = imread('autumn.tif');
imshow(x);
myRandomNTSC = [0.3 0.5 0.1;0.6 -0.3 -0.3;0.2 -0.6 0.312];
myRGB = cat(3,double(x(:, :, 1)),double(x(:, :, 2)),double(x(:, :, 3)));
myYIQ = myRandomNTSC * myRGB;
figure;
imshow(myYIQ);
end

