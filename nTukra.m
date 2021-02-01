
function tukra=nTukra(boro_tukra,row,col)
%Finding specific part from unrolled data
tukraNo=16*(col-1)+row;
tukra=boro_tukra(:,256*(tukraNo-1)+1:256*tukraNo);

end
