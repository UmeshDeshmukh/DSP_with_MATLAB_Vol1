% Power spectral density (PSD) of a signal+noise
fs=200; %sampling frequency in Hz
tiv=1/fs; %time interval between samples;
t=0:tiv:(40.96-tiv); %time intervals set (4096 values)
N=length(t); %number of data points
yr=randn(N,1); %random signal data set
ys=sin(50*2*pi*t); %sinusoidal signal (15 Hz)
y=ys+yr'; %the signal+noise
nfft=256; %length of FFT
window=hanning(256); %window function
numoverlap=128; %number of samples overlap
figure(1);
subplot(3,2,1);
plot(t,yr,'k'); %plots noise
title('noise signal');
subplot(3,2,2);
pwelch(yr,window,numoverlap,nfft,fs);
title('PSD of noise signal');

subplot(3,2,3);
plot(t,ys,'k'); %plots noise
axis([0 5 -2 2]);
title('sine signal');
subplot(3,2,4);
pwelch(ys,window,numoverlap,nfft,fs);
title('PSD of sine signal');

subplot(3,2,5);
plot(t,y,'k'); %plots noise+signal
title('noise+sine signal');
subplot(3,2,6);
pwelch(y,window,numoverlap,nfft,fs);
title('PSD of noise+sine signal');