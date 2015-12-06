function [ ret ] = integerize( a )
smallest=a(1,1);
for i=1:size(a,1)
for j=1:size(a,2)
   if smallest>a(i,j)
       smallest=a(i,j);
   else
       smallest=smallest;
   end
end
end
if smallest>=0 && smallest<=255
    ret='uint8';
elseif smallest>255 && smallest<=65535
    ret='uint16';
elseif smallest>65535 && smallest<=4294967295
    ret='uint32';
elseif smallest>4294967295 && smallest<=18446744073709551615
    ret='uint64';
else
    ret='none';
end
end

