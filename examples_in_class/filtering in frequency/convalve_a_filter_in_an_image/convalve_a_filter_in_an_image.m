% Create Circle
[x, y] = meshgrid(-128:127, -128:127);
z = sqrt(x.^2 + y.^2);
c1 = (z < 15);
imshow(c1);
% Image Read
c = imread('cameraman.tif');
figure;
imshow(c);
af = fftshift(fft2(c));
% Circle and Image
cf1 = af .* c1;
d = ifft2(cf1);
f1 = log(1 + abs(d));
F = max(f1(:));
figure;
imshow(f1 / F);