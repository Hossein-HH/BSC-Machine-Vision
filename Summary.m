%* syntax
%************************************************************************
%? ,              => space
%? ;(end of line) => for show/hide answer
%? []             => define a matris
%? ;(in [ ])      => split rows of a matris
%? ()             => for set index of an array
%? a:b            => every elements between a & b (index)
%? a:b:c          => a = start | b = length (default = 1) | c = end
%? :              => every elements in a dimensional
%? w=[a ;(or,)b]  => we can combine 2 matrix and set them to a var
%? clc            => clear screen
%? clear          => claer all vars in workspace
%? clear x        => claer x from workspaace
%? .^             => ^
%? .*             => index by index
%? *              => matrix mutiplication row in column ( m * n , n * k)
%? pi             => pi number
%?
%?
%?
%?

%* functions
%************************************************************************

% make matrixs for multiplication
ones(x1)
ones(x1, x2)
ones(x1, x2, x3)

% % make matrixs for sum
zeros(x1)
zeros(x1, x2)
zeros(x1, x2, x3)
%? each xn means a dimensional

% show long format or short format for float numbers
format short
format long

% read image to matrix
imread('path/img.png')

% convert rgb matrix (image) to BW(black withe)
rgb2gray()

% casting to double
a = double(b)

% draw the diagrams
plot()

% integral
int()

% sqrt
sqrt()

% max by rows
max()

% sort
sort()

% inverse of a matrix
a'

% open a new window
figure

% show many plot in a figure
subplot()

subplot(2, 1, 1);
x = linspace(0, 10);
y1 = sin(x);
plot(x, y1)

subplot(2, 1, 2);
y2 = sin(5 * x);
plot(x, y2)

%? draw nD diagrams

%? 3D diagrams
plot3()

% t = 0:pi/50:10*pi;
% st = sin(t);
% ct = cos(t);
% plot3(st,ct,t)

% ? draw a digram with automatically domain (x in blow)
syms var
ezplot()

% the heart ❤️
syms x y;
ezplot(x^2 + (y - nthroot(x^2, 3))^2 - 1);

% syms x;
% ezplot(2*x ^ 2 *sin(x))

% ? creat a plat
meshgrid(n var OR n period)
surf() % filled
mesh() % emptly

% [x1,x2] = meshgrid(-10:10,-10:10);
% y = x1 .^ 2 + x2 .^2;
% surf(x1,x2,y)
% figure
% mesh(x1,x2,y)

%* controls
%************************************************************************

% print somthing to terminal
disp('text')

input("som thing : ")

if condition

end

if condition

else
end

if condition

elseif condition
    body
end

while condition

end

for i = 1:4
end

a = 1:4

for i = a
    disp("ali");
end

a = [1 4 5 7];

for i = a
    disp("ali");
end

%* controls
%************************************************************************

%? write functions in Matlab

function output = myFun(input)
    %myFun - Description
    %
    % Syntax: output = myFun(input)
    %
    % Long description
end

%? no out no in
function func1()
end

%? no out 1 in
function func2(x)
end

%? no out multi in
function func3(x, y)
end

%? no out no in
function out1 = func4()
end

%? no out no in
function out1 = func8(x)
end

%? no out no in
function out1 = func9(x, y)
end

%? multi out no in
function [m, n] = func5(x)
end

%? no out no in
function [m, n] = func6(x, y)
end

%? no out no in
function [m, n] = func7()
end

%? call and feedback from functions
x = func7()
%? x ==>> first output of func7 outputs = m

%? diff .m files and functions
%? if we write a func with a common name by .m file we can use that force intialize the func args
%? But
%? if we write some codes without or with a function in a .m file we can call that "FILE NAME" and run all codes on that
%? (that means if we have some args in that func matlab automaticaly initilize them from common name in "WORKSPACE")

%? image procceing
imread('image location')
% for read image

imshow(only matrix)

rgb2gray()

% finding edge by canny mode
edge(m, 'canny')

% Separation R G B layers from a picture
I1 = imread("car1.jpg")
Ired = I1(:, :, 1);
Iblue = I1(:, :, 2);
Igreen = I1(:, :, 3);

I2 = rgb2ycbcr(I1);

%? create some numbers between 0 & 1
rand()

%? create some numbers of Z
randi([0, 255], 64, 64)

%? type casting
%? casting to uint8
uint8(randi([0, 255], 64, 64))

%? print colorize
image()

%? create a 3D matrix
cat(num_of_dimentioenals, a, b, c)
% cat(3,a,b,c)

% 400 ta structue
Img(1:400) = struct('field_name', zeros(100, 100, 'uint8'));
x = struct('c1', zeros(5), 'c2', zeros(5));

for i = 1:400
    n = num2str(i);
    disp([imread('a (', n, ').jpg')]);
    I = imread(['a (', n, ').jpg']);
    Img(i).cdata = I;
    subplot(2, 2, i);
    imshow(Img(i).'field_name')
end

%? Intensity

%? imadjust() =>> Intensity converts (tabdilate intensity)
%? imadjust(I,[low_in high_in],[low_out high_out],gamma)
%? [low_in high_in] bazeye voroodi tabdil
%? [low_out high_out] bazeye khorooji tabdil
%? gamma => a parameter for Map (negasht)
%? g < 1 =>> increase image brightness
%? g > 1 =>> decrease image brightness
%? defalut gamma = 1

imadjust();
I1 = imread("moon.tif");
imshow(I1)
I2 = imadjust(I1, [0, 1], [1, 0]);
%? 0,1 => 1,0 means convert white to black and black to white
figure;
imshow(I2);

%? be ezaye voroodi kocheck tar az bazeye khoroji => siah ha siah tar mishaan inja sefida sefid tar
I1 = imread("moon.tif");
imshow(I1)
I2 = imadjust(I1, [0.5, 0.75], [0, 1]);
figure;
imshow(I2);

%? this code show to us more details in images

%? log in im2uint8
I1 = imread("moon.tif");
imshow(I1)

I2 = im2uint8(log(j + double(I1)));
%? the j no need to define

figure;
imshow(I2);

%! what warning in im2uint8 ????

%? histogram => use imhist()
%? namayeshe tooziee rang ha az teyfe 0-255 , tedad tekrare har rang har che avalle nemoodar bolandtar bashe yani tasvir siahtar hast
I1 = imread("moon.tif");
h = imhist(I1);
plot(h);
figure;
imshow(I1);

%? nemodare miliee (bar chart)
figure;
bar(h)

%? imhist_whitout_assignment
I1 = imread("moon.tif");
imhist(I1);
%? that's show the digram by bar chart automatically

%? histeq() => tashime histogram
figure; imshow(I1);
figure; imhist(I1);
g = histeq(I1, 256);
figure; imshow(g);
figure; imhist(g);

%? tatbighe histogram (taeene sjekle kollieye hostogram)
%? CDF
%? mohasebe bar mabneye maokose histograme mojood
%? ke natijeye on tamarkoze histogeram az sathe tarik be sathe rooshan khahad bood
%? be zabane sade shift payda mikonad

%? paerazeshe yek hamsayegi :
% 1.taeene markaz
% 2.anjame amaliate morede nazar bar roye yek pixels
% 3.dar nazar gereftane natijeye amaliat be onvane khoroji pardazesh dar on noghte
% 4.tekrare in faraynd baraye kole pixel ha

%? ravesh haye khatie filteringe fazaee :
% convulution : 1.zarbe kollieye pixel haye hamsayegi dar zaribe motanazer va jame natayej ba ham
% 2.zarbe pixele morede nazar dar zaribe motanazer va jam ba pixel haye hamsayegi

% 1  :
% agar zaribe hamsayegi ra M*N begirim be M8N zarib niaz darim ke be an matrise zarayeb , filter , mask , ... migooeem
% enteghale markaze mask dar tasvire F az yek noghte be noghteye digar va mohasebeye pasokhe farayand

%? ravesh haye ghyre_khatie filteringe fazaee :
% bejaye + , * az yekseri mohasebate gheyre_khati bar roye pixel ha estefade mishavad
% dar raveshe gheyre khati raveshe mask matrah nemishavad va ba hefze ideye asliye filtering filter dar ghalebe yek tabee gheyre khati bar roye pixel haye mojood dar hamsayegi amal mikonad
% farz konid voroodie filteringe gheyre khati yek tasvir ba andazeye m*n bashad va andazaye hamsayegi an khorooji tasvir hadeaksar mn * mn pixel khahad bood
% colfilt be hamrahe yek taeen konandeye noghate marzi be name padarray mitavanand in filter ra baraye shoma erae konand  

%! hamvare andazeye mask fard ast

g = imfilter(f, w, filtering_mode, option, size);
% f = image
% w = mask
% option = noe gostaresh
% size = {same, full}

A = magic(5);
mask = [-1 0 1];
imfilter(A,mask)

I1 = imread('peppers.png');
imshow(I1);
mask = ones(3);
I2 = imfilter(I1,mask);
figure;
imshow(I2);


I1 = imread('peppers.png');
imshow(I1);
mask = fspecial('motion',50,45);
I2 = imfilter(I1,mask);
figure;
imshow(I2);

I1 = imread('tire.tif');
imshow(I1);
mask = [1 1 1; 1 2 1; 1 1 1];
I2 = imfilter(I1,mask,'replicate');
figure;
imshow(I2,[]);
I3 = uint8(colfilt(I1, [5 5],'sliding',@mean));
figure;
imshow(I3);

%! filter haye estandarde gheyre_khati
%! imnoise , ordfilt
%? im noise create noise on our image

I1 = imread('tire.tif');
imshow(I1);
I2 = imnoise(I1,'salt & pepper',0.2);
%? 0.2 shedate noise hast
figure;
imshow(I2);

%? medfilt2 repair noises on image
I1 = imread('tire.tif');
imshow(I1);
I2 = imnoise(I1,'salt & pepper',0.2);
figure;
imshow(I2);
I3 = medfilt2(I2);
figure;
imshow(I3);

%? frequency processing
% manzoor az frequency processing enteghale tasvir az hozeye makan va matris be hozeye signal , fereqance mibashad
% hamoon tabdile forie
% omimi tarin ravesh estefade az tabdile forieey gosasteye 2D mibashad
% DFT  : image2signal 
% IDFT : siignal2image  
% fast DFT => fft
% fft2 : fft with 2D output 
% ifft2 : fast 2D IDFT

I1 = imread('tire.tif');
imshow(I1);
I2 = fft2(I1);

% real part
I1 = imread('tire.tif');
imshow(I1);
I2 = fft2(I1);
>> I1 = imread('tire.tif');
imshow(I1);
I2 = fft2(I1);
I3 = uint8(abs(I2));
figure;
imshow(I3);

% IDFT ifft2 for convert signal to image
I1 = imread('tire.tif');
imshow(I1);
I2 = fft2(I1);
I3 = ifft2(I2);
figure;
imshow(I3);

%? DWT dwt => tabdile forieye mojak
% use dwt for image watermarking like this : 
% https://uk.mathworks.com/matlabcentral/fileexchange/78790-digital-watermarking-comparison-of-dct-and-dwt-methods

%  osolan ideye filtering dar hozeye fereqance bar mabanye entekhabe yek tabe tbadile filtere monaseb baraye eejade raftare delkhah dar fereqance mibashad
%  masalan yek tasvire blur shode ba komake yek filtere paeen gozar mitavand bedast biayad

%? ejrae algorithmie fft besyar sari tar az dft mibashad

%? marahele filtering dar hozeye fereqance
% 1 tarife parametr haye avalie
% 2 anjame amaliate tavabe forie
% 3 tolide filter
% 4 zarbe filter dar tabe forie H*F
% 5 mohasebeye joze haghighi az tabe forie (real(fft^-1()))
% 6 boreshe bala va samte chepe netijeye bedast amade albate agar matrise avalie daraye abaade fard bashad masalan 101 * 101 
% ama agar zooj bashad masalan 100 * 100 niazi be inkar nist

%? meshgrid()
% in tabe yek array jahate toolide filter haye fereqancy erae mikonad

[x,y] = meshgrid(-128:127,-128:127);
z = sqrt(x.^2+y.^2);
c = (z<15);
imshow(c)
af = fftshift(fft2(c));
f1 = log(1+abs(af));
F = max(f1(:));
figure;
imshow(f1/F);

% Create Circle
[x, y] = meshgrid(-128:127, -128:127);
z = sqrt(x.^2 + y.^2);
c1 = (z < 15);
imshow(c1);
% Image Read
c = imread('cameraman.tif');
figure;
imshow(c);
af = fftshift(fft2(c));
% Circle and Image
cf1 = af .* c1;
d = ifft2(cf1);
f1 = log(1 + abs(d));
F = max(f1(:));
figure;
imshow(f1 / F);

a = zeros(256,256);
a(78:178,78:178) = 1;
imshow(a)
af = fftshift(fft2(a));
f1 = abs(af);
F = max(f1(:));
figure;
imshow(f1/F)

a = zeros(256,256);
a(78:178,78:178) = 1;
imshow(a)
af = fftshift(fft2(a));
f1 = log(1+abs(af));
F = max(f1(:));
figure;
imshow(f1/F)

%? 1401/02/11

%? omghe bit

% (2^b)^3 ==> b = omghe bit

I = randi([0, 255], 128, 128);
imshow(uint8(I));

I = randi([0, 255], 128, 128);
I(54:74, 54:74) = 0;
I(:, :, 2) = I;
I(:, :, 3) = I(:, :, 1);
imshow(uint8(I));

I = randi([0, 255], 128, 128);
I(54:74, 54:74) = 0;
I(:, :, 2) = I + 5;
I(:, :, 3) = I(:, :, 1) - 45;
imshow(uint8(I));

%? first layeris R then G then B
%? 1 R
%? 2 G
%? 3 B

% ? cat
A = ones(3)
B = zeros(3)
C1 = cat(1, A, B)
C2 = cat(2, A, B)

A = rand(2, 3, 4);
B = rand(2, 3, 5);
C = cat(3, A, B);
szC = size(C)

%? sakhte tasvire RGB az 3 ta tasvire siah sefid

I = randi([0, 255], 128, 128);
I(54:74, 54:74) = 0;
I1 = I;
I2 = I + 76;
I3 = I + 24;
I4 = cat(3, I1, I2, I3);
imshow(uint8(I4));

%? NTSC
Y roshanaee
I signal
Q signal

I = imread("peppers.png");
imshow(I);
figure;
ntscimage = rgb2ntsc(I);
imshow(ntscimage);
I2 = ntsc2rgb(ntscimage);
figure;
imshow(I2);

%? keyfiate tasvir : 

%? PSNR 
psnr(double(I), I2)
%? bishtar behtar
%? moghayeseye keifiate 2 tasvir

mse(double(I), I2)
%? kamtar behtar
% ميانگين مربعات خطا