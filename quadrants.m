function [ Q ] = quadrants( n )
Q(1,1)=1;
Q(1,n)=2;
Q(n,1)=3;
Q(n,n)=4;

end
