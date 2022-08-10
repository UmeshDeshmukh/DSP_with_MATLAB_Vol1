
%Mean median mode  

clc;
close all;
v = 0:0.01:8;
alpha = 3.25;
ray_pdf = raylpdf(v,alpha);
plot(v,ray_pdf,'k');
hold on;
axis([0 10 0 0.4]);
fs=100; %sampling frequency in Hz
tiv=1/fs; %time interval between samples;
t=0:tiv:(20-tiv); %time intervals set (2000 values)
N=length(t); %number of data points
y=raylrnd(alpha,N,1);
mu=mean(y);
med=median(y);
plot([mu mu],[0 0.33],'--k'); %mean
plot([med med],[0 0.37],':k'); %median
[pky,pki]=max(ray_pdf);
plot([v(pki) v(pki)],[0 pky],'-.k'); %mode