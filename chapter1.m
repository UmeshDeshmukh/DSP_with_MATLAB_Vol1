% DSP with Matlab examples volume 1 chapter 1

% Generate sampled square signal 
A = [1,1,1,0,0,0,1,1,1,0,0,0,1,1,1,0,0,0,1,1,1,0,0,0,1,1,1,0,0,0];
fs = 30; %sampling frequency in Hz
ts = 1/fs; %sampling interval in sec.
t = 0:ts:(length(A)/fs - ts);
plot(t,A,'*');
axis([0 length(A)/fs min(A)-0.5 max(A)+0.5]);
xlabel("time(sec.)");
title("sampled square wave");

% Generate sinusoid signal
f = 3; %signal freq. in Hertz
fs1 = 50; %sampling frequency
ts1 = 1/fs1;
t = 0:ts1:(3 - ts1);
S = sin(2*pi*f*t);
plot(t,S,'k');
axis([0 3 -1-0.5 1+0.5]);
hold on;
C = cos(2*pi*f*t);
plot(t,C,'--k');
axis([0 3 -1-0.5 1+0.5]);
hold off;
xlabel("time(sec.)");
title("Sine,cosine wave");

% Generate square signal
f_sq = 100;
ws_sq = 2*pi*f_sq;
fs2 = 2000;
ts2 = 1/fs2;
t = 0:ts2:(0.3 - ts2);
Sq = square(ws_sq*t);
plot(t,Sq,'k');
axis([0 0.3 -1-0.5 1+0.5]);
xlabel('seconds'); title('square signal');

% Generate sawtooth signal
f_saw = 20;
ws_saw = 2*pi*f_saw;
fs3 = 250;
ts3 = 1/fs3;
t = 0:ts3:(0.3 - ts3);
Saw = sawtooth(ws_saw*t);
plot(t,Saw,'k');
axis([0 0.3 -1-0.5 1+0.5]);
xlabel('seconds'); title('Sawtooth signal');