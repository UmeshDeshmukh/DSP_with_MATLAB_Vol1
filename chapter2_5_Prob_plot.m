N = 200;
y1 = randn(N,1);
figure(1);
normplot(y1);
y2=wblrnd(2,0.5,N,1);
figure(2);
wblplot(y2);