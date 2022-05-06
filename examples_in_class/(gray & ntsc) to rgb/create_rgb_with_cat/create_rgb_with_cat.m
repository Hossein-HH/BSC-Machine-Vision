I = randi([0, 255], 128, 128);
I(54:74, 54:74) = 0;
I1 = I;
I2 = I + 76;
I3 = I + 24;
I4 = cat(3, I1, I2, I3);
imshow(uint8(I4));