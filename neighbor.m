function [ o ] = neighbor( v )
o=[];
if size(v,1) ~= 1 || size(v,2)< 2
   o = [];
else
    rowsize=size(v,2);
    for i=1:rowsize-1
        o=[o i];
end
end

