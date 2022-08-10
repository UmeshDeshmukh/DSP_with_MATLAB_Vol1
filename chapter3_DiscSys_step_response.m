num1 = [1]; 
den1 =[1 -0.5];
Ts1 = 0.1; %sampling period
G1 = tf(num,den,Ts);
figure(1);
step(G1,'k'); %step response of G
title('step response of discrete system');

figure(2);
num2 =[1 -0.5]; den2 =[1 0.55 0.75];
Ts2 =0.1;
G2 =tf(num2,den2,Ts2);
pzmap(G2);
zgrid;

figure(3);
num3 =[1]; den3 =[1 -0.5];
Ts3 =0.1;
G3 =tf(num3,den3,Ts3);
pzmap(G3);
zgrid;