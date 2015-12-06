function [ x ] = odd_index( M )
row=size(M,1);
col=size(M,2);
x=[];
for i=1:row
    for j=1:col
        if mod(i,2)==1
            if mod(j,2)==1
                x=[x M(i,j)];
            end
        end
    end
end
end
