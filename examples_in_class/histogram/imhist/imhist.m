%? namayeshe tooziee rang ha az teyfe 0-255 , tedad tekrare har rang har che avalle nemoodar bolandtar bashe yani tasvir siahtar hast
I1 = imread("moon.tif");
h = imhist(I1);
plot(h);
figure;
imshow(I1);
%? for bar chart
figure;
bar(h)