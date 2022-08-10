fy = 15;
wy = 2*pi*fy;
fs = 2000;
ts = 1/fs;
t  = 0:ts:(3-ts);
x  = (t/2)-1;
y  = vco(x,fy,fs);
h  = hilbert(y);
dh = diff(h)/ts;
g  = abs(dh);
v  = g/(2*pi); % to Hz

figure(1);
subplot(3,1,1);
plot(t,y);
subplot(3,1,2);
plot(t(2:6000),v,'k');
axis([0 1 -1.1 1.1]);
%sound(y,fs);
%subplot(3,1,3);
figure(2);
specgram(y,128,fs);
axis([0 3 0 350]);