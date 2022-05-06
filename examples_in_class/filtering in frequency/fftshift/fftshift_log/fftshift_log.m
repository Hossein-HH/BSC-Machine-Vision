a = zeros(256,256);
a(78:178,78:178) = 1;
imshow(a)
af = fftshift(fft2(a));
f1 = log(1+abs(af));
F = max(f1(:));
figure;
imshow(f1/F)