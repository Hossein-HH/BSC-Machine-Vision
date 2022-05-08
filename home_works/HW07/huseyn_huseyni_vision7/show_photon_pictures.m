function show_photon_pictures

    Img(1:10) = struct('photon_pictures', zeros(0, 0, 'uint8'));

    for i = 1:5
        n = num2str(i);
        current_image_name = [n, '.jpg'];
        % disp(imread(['assets\',current_image_name]));
        I = imread(['assets\', current_image_name]);
        Img(i).photon_images = I;
        subplot(1, 5, i);
        imshow(Img(i).photon_images)
        title('Google')  
    end

end
