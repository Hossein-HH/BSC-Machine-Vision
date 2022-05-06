[x,y] = meshgrid(-128:127,-128:127);
z = sqrt(x.^2+y.^2);
c = (z<15);
imshow(c)
af = fftshift(fft2(c));
f1 = log(1+abs(af));
F = max(f1(:));
figure;
imshow(f1/F);