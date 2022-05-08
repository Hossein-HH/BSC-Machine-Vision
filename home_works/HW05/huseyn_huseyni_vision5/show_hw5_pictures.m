function show_hw5_pictures 
    subplot(2,5,1);
    imshow(imread('assets\eye.jpg'));
    subplot(2,5,6);
    imshow(rgb2gray(imread('assets\eye.jpg')));

    subplot(2,5,2);
    imshow(imread('assets\brain_umor.jpg'));
    subplot(2,5,7);
    imshow(rgb2gray(imread('assets\brain_umor.jpg')));

    subplot(2,5,3);
    imshow(imread('assets\mountain.jpg'));
    subplot(2,5,8);
    imshow(rgb2gray(imread('assets\mountain.jpg')));

    subplot(2,5,4);
    imshow(imread('assets\ship.jpg'));
    subplot(2,5,9);
    imshow(rgb2gray(imread('assets\ship.jpg')));

    subplot(2,5,5);
    imshow(imread('assets\my_desk.jpeg'));
    subplot(2,5,10);
    imshow(rgb2gray(imread('assets\my_desk.jpeg')));
end