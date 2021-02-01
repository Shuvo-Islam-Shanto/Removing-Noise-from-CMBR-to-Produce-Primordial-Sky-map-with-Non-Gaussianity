%data

b1=zeros(1,1536);
b2=zeros(1,1024);
b3=zeros(1,512);
image=[];
%row col =2560
for i=1:2560 %row
        if i>=1 && i<=512
            image_r=[(data(1024*(i-1)+1:1024*i)),b1];
            image=[image;image_r];
            y=1024*512;
        end
        if i>512 && i<=1024
            image_r=[data(y+1536*(i-512-1)+1:y+1536*(i-512)),b2];
            image=[image;image_r];
            z=512*1536;
        end
        if i>1024 && i<=1536
            image_r=[b3 ,data(y+z+1536*(i-1024-1)+1:y+z+1536*(i-1024)),b3];
            image=[image;image_r];
            z2=512*1024;
        end
        if i>1536 && i<=2048
            image_r=[b2,data(y+z+z2+1536*(i-1536-1)+1:y+z+z2+1536*(i-1536))];
            image=[image;image_r];
            z3=512*1536;
        end
        if i>2048 && i<=2560
            image_r=[b1,data((y+z+z2+z3+1024*(i-2048-1)+1):(y+z+z2+z3+1024*(i-2048)))];
            image=[image;image_r];
            z4=512*1024;
        end
        
    
end
