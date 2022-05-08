subplot(2,2,1)
[x,y] = meshgrid(-10:10,-10:10);
z = (x+2*y-7)^2 + (2*x+y-5)^2;
surf(x,y,z)
subplot(2,2,2)
mesh(x,y,z)