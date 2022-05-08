function test_ntsc_psnr()
    x = imread('autumn.tif');
    subplot(2, 2, 1);
    imshow(x);

    myYIQ_R = (0.3 .* double(x(:, :, 1)) + 0.5 .* double(x(:, :, 2)) + 0.1 .* double(x(:, :, 3)));
    myYIQ_G = (0.6 .* double(x(:, :, 1)) - -0.3 .* double(x(:, :, 2)) - -0.3 .* double(x(:, :, 3)));
    myYIQ_B = (0.2 .* double(x(:, :, 1)) - -0.6 .* double(x(:, :, 2)) + 0.3 .* double(x(:, :, 3)));

    myYIQ = cat(3, myYIQ_R, myYIQ_G, myYIQ_B);

    subplot(2, 2, 3);
    imshow(myYIQ);

    I = imread("autumn.tif");
    subplot(2, 2, 2);
    imshow(I);

    ntscimage = rgb2ntsc(I);
    subplot(2, 2, 4);
    imshow(ntscimage);

    compare_result = psnr(ntscimage, myYIQ);
    output = ["Compare result with PSNR : ", compare_result];
    disp(output);

end
