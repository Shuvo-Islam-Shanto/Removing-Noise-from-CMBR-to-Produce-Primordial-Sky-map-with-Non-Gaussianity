tukraOnCall_n=wiener2(tukraOnCall,[4 4]);
noise_a=image(1797:2052,1537:1792);
xcor_noise=xcorr2(boro_tukra,noise_a);
xcor_noise_abs=abs(xcor_noise);
[ssr,snd] = max(xcor_noise(:));
[ij,ji] = ind2sub(size(xcor_noise),snd);

figure
plot(xcor_noise(:))
title('Cross-Correlation')
hold on
plot(snd,ssr,'or')
hold off
text(snd*1.05,ssr,'Maximum')