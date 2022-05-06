function convalve_filter_in_lozenge()
a = zeros(256,256);
for i=1:256
    for j=1:256
        if(128<i+j && i+j<128+256 && -128<i-j && i-j<128)
            a(i,j) = 1;
        end
    end
end
subplot(2,2,1);
imshow(a)
af = fftshift(fft2(a));
B = log(1+abs(af));
f = max(B(:));
subplot(2,2,2);
imshow(B/f);


subplot(2,2,3);
imshow(a)
af = fftshift(fft2(a));
B = abs(af);
f = max(B(:));
subplot(2,2,4);
imshow(B/f);