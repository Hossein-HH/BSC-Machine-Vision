
figure;imshow(I1);
figure;imhist(I1);
g = histeq(I1,256);
figure;imshow(g);
figure;imhist(g);