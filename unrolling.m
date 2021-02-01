%Input=====>Image of temperature variation of CMB
%Output====>128 part in an array


for i=1:8
    for j=1:16
        tukra=data(256*(i-1)+1:256*i,256*(j-1)+1:256*j);
        boro_tukra=[boro_tukra,tukra];
    end
end


