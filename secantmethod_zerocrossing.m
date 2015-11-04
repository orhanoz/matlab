clear; close all;
x = zeros(1, 10); % Pre-allocate
f=@(x)x*cos(x)+1;
df=@(x)cos(x)-x*sin(x);
maxstepsize=10^-4;
mystepsize=10^5;
n=1;
x(1) = 2; x(2) = 1;
while mystepsize>maxstepsize
   x(n+2) = x(n+1)-((x(n+1)-x(n))/(f(x(n+1))-f(x(n))))* f(x(n+1));
    mystepsize=abs(x(n+1)-x(n));
    n=n+1;
end
x
