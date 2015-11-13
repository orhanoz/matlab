f1= @(x,y) 32*x^3+18*y^2+24.43;
f2= @(x,y) -2*x^2+3*y^2-5.92;
tol=10^-5;
mytol=10^5;

df1x=@(x) 96*x^2;
df1y=@(y) 36*y;
df2x=@(x) -4*x;
df2y=@(y) 6*y;

xx(1)=-2;
yy(1)=2;
k=1;
while mytol>tol

    a=[df1x(xx(k)),df1y(yy(k));df2x(xx(k)),df2y(yy(k))];
    b=[-f1(xx(k),yy(k));-f2(xx(k),yy(k))];
    c=inv(a)*b;
   
    mytol=c'*c;
    xx(k+1)=xx(k)+c(1);
    yy(k+1)=yy(k)+c(2);
    k=k+1;
end
