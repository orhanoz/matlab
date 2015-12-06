function [ gen ] = generationXYZ( year )
if year >= 1966 && year<=1980
   gen='X';
elseif year >= 1981 && year<=1999
   gen='Y';
    elseif year >= 2000 && year<=2012
   gen='Z';
    else
        gen='O';
end
end

