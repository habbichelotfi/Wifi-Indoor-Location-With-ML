clear ; close all; clc

load w.txt;
data=w;

x=data(:,1:7);

x=x*-1;
x=[ones(size(x,1),1),x];
x=x(1:160,:);

y=data(:,8);
y=y(1:160,:);

theta=zeros(5);

alpha=0.0000001;
iter=60;
lambda=0.9;
z=y;
v=x;
vecteur_cost=[];
index_theta = zeros(size(x, 2)-1, 1);
coste=zeros(4,iter);

  for i=1:4,
   pos = find(y == i);
         neg = find(y ~= i);
           z(pos ,1) = 1;
           z(neg ,1) = 0;
     
           [vecteur_cost,theta] = gradient(x,z,index_theta,alpha,iter,lambda);
           theta_result(i,:)=theta';
           coste(i,:)=vecteur_cost;
endfor


plotDataAndHypo(x,y,theta_result);
plotCost(coste);