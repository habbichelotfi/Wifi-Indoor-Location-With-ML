0;
data=importdata('wifi_localization.txt');

x=data(:,1:7);
x=[ones(size(x,1),1),x];
x=[x(1:350,:);x(501:850,:);x(1001:1350,:);x(1501:1850,:);

y=data(:,8);
y=y-1;
y=[y(1:350,:);y(501:850,:);y(1001:1350,:);y(1501:1850,:);
pos1=find(y==0);
pos2=find(y==1);
pos3=find(y==2);
pos4=find(y==3);
pos=[pos1 pos2 pos3 pos4];
theta=zeros(4);
theta1=[];
alpha=0.0006;
iter=300;
lambda=0.5;
disp(lambda);
  %theta(1,:)=gradient(x,y,theta(1,:),alpha,iter,lambda,pos(1:350,i),pos(1:350,r));
%plotDataAndHypo(x,y,theta);