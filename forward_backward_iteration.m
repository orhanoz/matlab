function [x]=forward_backward_iteration(a,b)
[l,u,p]=lu(a);
N=size(l,1);
y=zeros(N,1);

for n=1:N
    c=0;
    for k=1:N-1
        c=c-l(n,k)*y(k);
    end
    y(n)=(b(n)+c)/l(n,n);
end

uf=flipud(fliplr(u));
yf=flipud(y);
N=size(uf,1);
x=zeros(N,1);

for n=1:N
    c=0;
    for k=1:N-1
        c=c-uf(n,k)*x(k);
    end
    x(n)=(y(n)+c)/uf(n,n);
end
x=flipud(x);
end
