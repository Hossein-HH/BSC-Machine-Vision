function f = factoreil(n)
f = 0;
if n == 0 || n == 1
    f = 1;
elseif n >= 1
    f = n * factoreil(n-1);
end

 t = 0:0.01:(2*pi);
     x = cos(t);
     y = sin(t);
     plot(t,x,'k'); hold on;
     plot(t,y,'r-.'); 
     axis([0 2*pi -1.5 1.5])
     legend('cos(t)','sin(t)','Location','NorthEast')