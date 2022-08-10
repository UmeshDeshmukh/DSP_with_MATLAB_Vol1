%system example
%state space system model (2 tank system):
A1=1; A2=1; R1=0.5; R2=0.4;
A=[-1/(R1*A1) 1/(R1*A1); 1/(R1*A2) -(1/A2)*((1/R1)+(1/R2))];
B=[1/A1; 0]; C=[0 1]; D=0;
Ts=0.1; %sampling period
csys=ss(A,B,C,D); %setting the continuous time model
dsys=c2d(csys,Ts,'zoh'); %getting the discrete-time model
[a,b,c,d]=ssdata(dsys); %retrieves discrete-time model matrices
% system simulation preparation
Nf=40; %simulation horizon
x1=zeros(1,Nf); % for x1(n) record
x2=zeros(1,Nf); % for x2(n) record
x=[1;0]; % state vector with initial tank levels
u=0.1; %constant input
%behaviour of the system after initial state
% with constant input u
% for nn=1:Nf,
% x1(nn)=x(1); x2(nn)=x(2); %recording the state
% xn=(a*x)+(b*u); %next system state
% x=xn; %state actualization
% end;
% % display of states evolution
% figure(1)
% plot([0 Nf],[0 0],'b'); hold on; %horizontal axis
% plot([0 0],[-0.2 1.2],'b'); %vertical axis
% plot(x1,'r-x'); %plots x1
% plot(x2,'b-x'); %plots x2
% xlabel('sampling periods');
% title('system states');

h1_init = [1 0.8 0.6 0.4 0.2 0];
h2_init = [0 0.2 0.4 0.6 0.8 1];
x=[1;0]; % state vector with initial tank levels
figure(2);
for mm=1:6,
x(1)= h1_init(mm);
x(2)= h2_init(mm);
for nn=1:Nf,
x1(nn)=x(1); x2(nn)=x(2); %recording the state
xn=(a*x)+(b*u); %next system state
x=xn; %state actualization
end;
plot([0 Nf],[0 0],'b'); hold on; %horizontal axis
plot([0 0],[-0.2 1.2],'b'); %vertical axis
plot(x1,'r-x'); %plots x1
plot(x2,'b-x'); %plots x2
end;
xlabel('sampling periods');
title('system states');

figure(3)
for mm=1:6,
x(1)= h1_init(mm);
x(2)= 0;
for nn=1:Nf,
x1(nn)=x(1); x2(nn)=x(2); %recording the state
xn=(a*x)+(b*u); %next system state
x=xn; %state actualization
end;
plot([0 Nf],[0 0],'b'); hold on; %horizontal axis
plot([0 0],[-0.2 1.2],'b'); %vertical axis
plot(x1,'r-x'); %plots x1
plot(x2,'b-x'); %plots x2
end;
xlabel('sampling periods');
title('system states(h1 decreasing, h2=0)');

figure(4)
for mm=1:6,
x(1)= 0;
x(2)= h2_init(mm);
for nn=1:Nf,
x1(nn)=x(1); x2(nn)=x(2); %recording the state
xn=(a*x)+(b*u); %next system state
x=xn; %state actualization
end;
plot([0 Nf],[0 0],'b'); hold on; %horizontal axis
plot([0 0],[-0.2 1.2],'b'); %vertical axis
plot(x1,'r-x'); %plots x1
plot(x2,'b-x'); %plots x2
end;
xlabel('sampling periods');
title('system states(h1=0, h2 increasing)');
