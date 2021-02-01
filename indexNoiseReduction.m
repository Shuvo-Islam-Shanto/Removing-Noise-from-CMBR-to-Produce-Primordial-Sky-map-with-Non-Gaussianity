%xcor_noise_abs===> it is the xcorr valuse produced by boro_tukra and noise_a 
%noise_a==========>noise fragment used for reoving noise from boro_tukra
%boro_tukra=======>128 part of the original temperature imgage data
%noise_n==========>simulated noise map for a pixel of xcorr
%This function takes xcorr,noise and boro_tukra as input
%This function will give output boro_tukra as removed noise image
%Run time ===> 32768*511*256*256=1.0973e+12/e+7=100000/(60*60)=27.7 hours

max=1.111e+04;
for i=1:32768
   for j=1:511
       x=nf(xcor_noise_abs(j,i),max);%normalized factor function
       r=j-256;
       %simulating noise profile for a fregment
       if r<0
           noise_n=[noise_a(256-j:end,:);zeros(255-j,256)];
       elseif r==0
           noise_n=noise_a;
       else
           noise_n=[noise_a(1:256-r,:);zeros(r,256)];
       end
       noise_n=x.*noise_n;  %scalled noise profile 
       if i<32768
%         [m n]=size(noise_n);
%         disp(m)
%         disp(n)
%         [m n]=size(boro_tukra(i:i+255,:));
%         disp(m)
%         disp(n)
        boro_tukra(:,i:i+255)=boro_tukra(:,i:i+255)-noise_n; %noise profile applied
       end
   end
end