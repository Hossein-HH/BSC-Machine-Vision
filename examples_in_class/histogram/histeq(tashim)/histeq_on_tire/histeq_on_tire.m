I = imread('tire.tif');
J = histeq(I);
imshow(I);
figure;
imshow(J);