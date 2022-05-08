function test_ntsc_psnr()
    x = imread('baby.jpg');
    subplot(2, 2, 1);
    imshow(x);

    myYIQ_R = (0.299 .* double(x(:, :, 1)) + 0.578 .* double(x(:, :, 2)) + 0.114 .* double(x(:, :, 3)));
    myYIQ_G = (0.596 .* double(x(:, :, 1)) - -0.274 .* double(x(:, :, 2)) - -0.322 .* double(x(:, :, 3)));
    myYIQ_B = (0.211 .* double(x(:, :, 1)) - -0.523 .* double(x(:, :, 2)) + 0.312 .* double(x(:, :, 3)));

    myYIQ = uint8(cat(3, myYIQ_R, myYIQ_G, myYIQ_B));

    subplot(2, 2, 3);
    imshow(myYIQ);

    I = imread("baby.jpg");
    subplot(2, 2, 2);
    imshow(I);

    ntscimage = rgb2ntsc(I);
    subplot(2, 2, 4);
    imshow(ntscimage);

    compare_result = psnr(double(ntscimage), double(myYIQ));
    output = ["Compare result with PSNR : ", compare_result];
    disp(output);

end
