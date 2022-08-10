fs = 100;
ts = 1/fs;
t = 0:ts:(2-ts);
N = length(t);
r_sig = rand(N,1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1);
subplot(3,1,1);
plot(t,r_sig);
title("Random Signal with uniform PDF");
xlabel("seconds");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,1,2);
v = 0:0.01:1;
y_pdf = unifpdf(v,0,1);
plot(v,y_pdf);
axis([-1 1.5 -1 1.5]);
title("Uniform PDF");
xlabel("Values");
%plot([0 0],[0 1],'--k');
%plot([1 1],[0 1],'--k');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,1,3);
v=0:ts:1;
hist(r_sig,v);
colormap(cool);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2);
subplot(3,1,1);
r_sig2 = randn(N,1);
plot(t,r_sig2,'-k');
axis([0 2 -3 3])
xlabel('seconds');
title('Random signal with normal pdf');

subplot(3,1,2);
v = -4:0.001:4;
mu = 0; sigma = 1;
n_pdf = normpdf(v,mu,sigma);
plot(v,n_pdf,'k');

subplot(3,1,3);
t = 0:ts:(100-ts);
N = length(t);
randn_val = randn(N,1);
v = -5:0.01:5;
hist(randn_val,v);
colormap(cool);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(3);

subplot(3,1,1);
fs = 200;
ts = 1/fs;
t = 0:ts:(2-ts);
N = length(t);
