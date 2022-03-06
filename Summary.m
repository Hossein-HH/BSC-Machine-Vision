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
%? w=[a ;(or,)b]  => we can cobine 2 matrix and set them to a var
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
ones(x1,x2)
ones(x1,x2,x3)

% % make matrixs for sum
zeros(x1)
zeros(x1,x2)
zeros(x1,x2,x3)
%! each xn means a dimensional

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
ezplot(x^2 +(y - nthroot(x^2,3))^2 - 1);

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

for i=1:4
end

a=1:4
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
function func3(x,y)
end

%? no out no in
function out1 = func4()
end

%? no out no in
function out1 = func8(x)
end

%? no out no in
function out1 = func9(x,y)
end

%? multi out no in
function [m,n] = func5(x)
end

%? no out no in
function [m,n] = func6(x,y)
end

%? no out no in
function [m,n] = func7()
end

%? call and feedback from functions
x = func7()
%? x ==>> first output of func7 outputs = m

%? diff .m files and functions
%? if we write a func with a common name by .m file we can use that force intialize the func args
%? But
%? if we write some codes without or with a function in a .m file we can call that "FILE NAME" and run all codes on that
%? (that means if we have some args in that func matlab automaticaly initilize them from common name in "WORKSPACE")

%! age output1,3 ro bekhaym 2 ro nakhaym bayad chikar konim ?

%? image procceing
imread('image location')
% for read image

imshow(only matrix)

rgb2gray()

% finding edge by canny mode
edge(m,'canny')

% yek tasvire kooh yek tasvire keshti yek tasvir az khodkar medad laptop ya fazaye marboot be kelass yek tasrive tomore maghzi gharnieye cheshm ra bekhanid va be sorate rangi va siah va sefid nemayesh dahid