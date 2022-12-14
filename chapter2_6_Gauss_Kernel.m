v=-4:0.02:50; %set of values
L=length(v); %number of values
% random data:
X=[0.1, 0.25, 0.7, 1.6, 2.1, 3, 450, 5.2, 5.9, 16.5];
N=length(X); %number of data points
Kpdf=zeros(N,L); % reserve space
h=1; %bandwidth
q=1/(sqrt(2*pi)*h); %constant
for np=1:N,
 for nv=1:L,
  Kpdf(np,nv)=(q/N)*exp((-(v(nv)-X(np))^2)/(2*(h)^2));
 end;
end;
%total PDF
ypdf=sum(Kpdf);
%display
figure(1)
for np=1:N,
 plot(v,Kpdf(np,:),'k'); hold on; %PDF components
end;
plot(v,ypdf,'r'); %total PDF
plot(X,zeros(1,N),'bd'); %the data
axis([-4 10 0 0.18]);
xlabel('values');title('PDF estimation with Kernel method');