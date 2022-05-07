function test_ntsc_psnr()
    x = imread('autumn.tif');
    imshow(x);

    myYIQ =[   0.3.* double(x(:, :, 1)) +  0.5.* double(x(:, :, 2)) +  0.1 .* double(x(:, :, 3));
               0.6.* double(x(:, :, 1)) - -0.3.* double(x(:, :, 2)) - -0.3 .* double(x(:, :, 3));
               0.2.* double(x(:, :, 1)) - -0.6.* double(x(:, :, 2)) +  0.3 .* double(x(:, :, 3))];
    figure;
    imshow(myYIQ);

    I = imread("autumn.tif");
    imshow(I);
    
    ntscimage = rgb2ntsc(I);
    figure;
    imshow(ntscimage);

    psnr(ntscimage,myYIQ);

end
