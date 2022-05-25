function [a_n]=fibo(n)
a = 0;
b = 1;
for i = 1:n-2 %term for n
    c = a + b;
    a = b;
    b = c;
end
a_n  = c; % nth term
end

