%% plotting the segments
i=1;j=1;sq=zeros();s=zeros();
figure(1)
for i=1:16
    for j=1:8
       sq=nTukra(boro_tukra,i,j);
       p=16*(j-1)+i;
       subplot(16,8,p)
       imshow(sq)
       %s(p)=subplot(16,8,p),imshow(sq)
       %title(s(p),['tukra ',num2str(p)])
       hold on
    end
end