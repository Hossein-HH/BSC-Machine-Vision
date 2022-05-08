function show_nasa_pictures

    Img(1:10) = struct('nasa_pictures', zeros(0, 0, 'uint8'));

    for i = 1:10
        n = num2str(i);
        current_image_name = [n, '.jpg'];
        % disp(imread(['assets\',current_image_name]));
        I = imread(['assets\', current_image_name]);
        Img(i).nasa_nasa_images = I;
        subplot(2, 10, i);
        imshow(Img(i).nasa_nasa_images)
    
        subplot(2, 10, i + 10);
        imshow(rgb2gray(Img(i).nasa_nasa_images))
    end

end
