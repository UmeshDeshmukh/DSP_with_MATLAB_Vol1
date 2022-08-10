fy = 50;
wy = 2*pi*fy;
fs = 3000;
k  = 5; 
ts = 1/fs;
t  = 0:ts:(1-ts);
s  = exp(-k*t).*sin(wy*t);
sound(s,fs);
h  = hilbert(s);
g  = abs(h);

figure(1);
subplot(1,2,1);
plot(t,s);

subplot(1,2,2);
plot(t,s,'r');
hold on;
plot(t,g,'k',t,-g,'k');