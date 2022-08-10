% Power spectral density (PSD) of random signal
% with log-normal PDF
fs=100; %sampling frequency in Hz
tiv=1/fs; %time interval between samples;
t=0:tiv:(40.96-tiv); %time intervals set (4096 values)
N=length(t); %number of data points
%mu=0; sigma1=1; %random signal parameters
%nfft=256; %length of FFT
window=hanning(256); %window function
numoverlap=128; %number of samples overlap
figure(1);
subplot(3,2,1);
mu1=0; sigma1=1;
y1=lognrnd(mu1,sigma1,N,1);
pwelch(y1,window,numoverlap,nfft,fs);
title('PSD of random signal with log-normal PDF \mu=0,\sigma=1');

subplot(3,2,3);
mu2=0; sigma2=2;
y2=lognrnd(mu2,sigma2,N,1);
pwelch(y2,window,numoverlap,nfft,fs);
title('PSD of random signal with log-normal PDF \mu=0,\sigma=2');

subplot(3,2,5);
mu3=0; sigma3=3;
y3=lognrnd(mu3,sigma3,N,1);
pwelch(y3,window,numoverlap,nfft,fs);
title('PSD of random signal with log-normal PDF \mu=0,\sigma=3');

subplot(3,2,2);
mu1=0; sigma1=1;
y4=lognrnd(mu1,sigma1,N,1);
pwelch(y4,window,numoverlap,nfft,fs);
title('PSD of random signal with log-normal PDF \mu=0,\sigma=1');

subplot(3,2,4);
mu2=1; sigma2=1;
y5=lognrnd(mu2,sigma2,N,1);
pwelch(y5,window,numoverlap,nfft,fs);
title('PSD of random signal with log-normal PDF \mu=1,\sigma=1');

subplot(3,2,6);
mu3=2; sigma3=1;
y6=lognrnd(mu3,sigma3,N,1);
pwelch(y6,window,numoverlap,nfft,fs);
title('PSD of random signal with log-normal PDF \mu=2,\sigma=1');

figure(2);
subplot(3,2,1);
plot(t,y1);
title('Random signal with log-normal PDF \mu=0,\sigma=1');
subplot(3,2,3);
plot(t,y2);
title('Random signal with log-normal PDF \mu=0,\sigma=2');
subplot(3,2,5);
plot(t,y3);
title('Random signal with log-normal PDF \mu=0,\sigma=3');

subplot(3,2,2);
plot(t,y4);
title('Random signal with log-normal PDF \mu=0,\sigma=1');
subplot(3,2,4);
plot(t,y5);
title('Random signal with log-normal PDF \mu=1,\sigma=1');
subplot(3,2,6);
plot(t,y6);
title('Random signal with log-normal PDF \mu=2,\sigma=1');
