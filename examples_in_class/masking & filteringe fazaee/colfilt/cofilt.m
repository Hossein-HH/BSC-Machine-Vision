I1 = imread('tire.tif');
imshow(I1);
mask = [1 1 1; 1 2 1; 1 1 1];
I2 = imfilter(I1,mask,'replicate');
figure;
imshow(I2,[]);
I3 = uint8(colfilt(I1, [5 5],'sliding',@mean));
figure;
imshow(I3);