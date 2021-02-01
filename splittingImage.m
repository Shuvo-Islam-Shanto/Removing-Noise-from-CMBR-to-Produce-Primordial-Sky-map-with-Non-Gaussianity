%% calling the desired square segment from WMAP data

row=input('The number of row (within 16):  ');
col=input('The number of column (within 8): ');
tukraOnCall=nTukra(boro_tukra,row,col);
imshow(tukraOnCall)

%%
I=tukraOnCall;
x = [0 size(I,2)];
y = [size(I,1)/2 size(I,1)/2];
c = improfile(I,x,y);
figure
subplot(2,1,1)
imshow(I)
hold on
plot(x,y,'r')
subplot(2,1,2)
plot(c(:,1,1),'r')

%% FFT
L=length(c);
Y=fft(c);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

Fs=1000000;

f = Fs*(0:(L/2))/L;
plot(f,P1) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')

%% finding the bias

% histogram
[pixelCounts, grayLevels] = imhist(I, 256);
bar(grayLevels, pixelCounts);

% intensity value match for the maximum number of pixels
[counts, edges] = histcounts(I(:), 0:255);
[maxcount, maxidx] = max(counts)
most_common_intensity = edges(maxidx)

