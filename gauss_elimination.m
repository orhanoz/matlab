function [GA,Gb,X]=gauss_elimination(A,b)
Y=[A b];
matsize=size(Y);
rowsize=matsize(1);
colsize=matsize(2);
c=1;
while c<colsize+1
    cc=c;
    for k=c:rowsize
    re(k)=Y(k,c);
    end
    for z=c:rowsize
    if re(z)==max(re)
       Y= change_row(Y,z,c);
    end
    end
  Y=zero_under_pivot(Y,c,c);
  c=c+1;
  
end
Gb=Y(:,end);
GA=Y(:,1:1:end-1);
lsize=size(GA);
lsizerow=lsize(1);
lsizecol=lsize(2);
k=2;
of=0;
X(1)=Gb(lsizerow,1)/GA(lsizerow,lsizecol);
while k<lsizecol+1

X(k)=(Gb(lsizerow-(k-1),1)-GA(lsizerow-(k-1),lsizecol)*X(k-1))/GA(lsizerow-(k-1),lsizecol-(k-1));

k=k+1;
end
X
Gb
end

function X=change_row(X,r1,r2)
M=X;
X(r1,:)=M(r2,:);
X(r2,:)=M(r1,:);
end

function X=zero_under_pivot(X,r,c)
for j=(r+1):size(X,1)
 u=-1*(X(j,c)/X(r,c));
 X(j,:)=X(j,:)+u*X(r,:);
 
end
end

