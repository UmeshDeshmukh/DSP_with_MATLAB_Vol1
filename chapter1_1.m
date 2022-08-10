% Generate sawtooth signal
% N = 1024;
% f_sig = 2;
% w_sig = 2*pi*f_sig;
% t_sig = 1/f_sig;
% f_samp = f_sig*N;
% t_samp = 1/f_samp;
% t = 0:t_samp:(t_sig - t_samp);
% Saw = sawtooth(w_sig*t);
% plot(t,Saw,'k');
% axis([0 0.3 -1-0.5 1+0.5]);
% xlabel('seconds'); title('Sawtooth signal');
% f_saw = fft(Saw,f_samp);
% mag = imag(f_saw);
% bh = mag/N;
% stem(0:19,bh(1:20)); %plot of first 10 harmonics
% axis([0 20 0 1]);
% xlabel('Hz'); title('sawtooth signal harmonics');

%Fourier Transform of sawtooth signal
fy=1; %signal frequency in Hz
wy=2*pi*fy; %signal frequency in rad/s
Ty=1/fy; %signal period in seconds
N=512;
fs=N*fy; %sampling frequency in Hz
tiv=1/fs; %time interval between samples;
t=0:tiv:(Ty-tiv); %time intervals set
y=sawtooth(wy*t); %signal data set
y2 = abs(sin(wy*t));
figure(1);
plot(t,y2);
figure(2);
fou=fft(y2,fs); %Fourier Transform (set of complex numbers)
hmag=real(fou); bh=hmag/N; %get set of harmonic amplitudes
stem(0:9,bh(1:10)); %plot of first 10 harmonics
plot([0 10],[0 0],'k');
%axis([0 10 0 1]);
%xlabel('Hz'); title('sawtooth signal harmonics');
