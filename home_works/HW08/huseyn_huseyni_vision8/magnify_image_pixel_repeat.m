function magnify_image_pixel_repeat(img_in)
    img_out = zeros(2 * size(img_in));
    img_out (1:2:end, 1:2:end) = img_in;

    for i = 2:2:size(img_out, 1) - 1
        img_out(i, :) = (img_out(i - 1, :) + img_out(i + 1, :)) / 2;
    end

    for i = 2:2:size(img_out, 2) - 1
        img_out(:, i) = (img_out(:, i - 1) + img_out(:, i + 1)) / 2;
    end

    img_out = uint8(img_out);
    imshow(img_in);
    title('orginal image');
    figure
    imshow(img_out);
    title('resized image');
end
