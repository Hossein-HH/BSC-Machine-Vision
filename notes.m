%? new edition

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

