function y=nf(val,max)
%take input value of xcorr and give output of scaling value
val=val/max;            %feature scaling
y=abs(val)/(256*256);   %scaling for location

end