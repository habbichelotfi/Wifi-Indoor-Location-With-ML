
function [coste,output]=train(iter,layer,output,poid1,poid2,y,x)
  coste=[];
for k=1:iter #nombre iterration
  c_intermediaire =[];
for j=1:100-20 
  [layer1,output]= feedforward(x(j,:),poid1,poid2); #caclule du output 'hypothese' avec les poid en entrer
  [poid1,poid2]=backprobagation(x(j,:), layer1,poid1,poid2,y(j,:),output); #modifier les poids en fonctions du output trouvé
  c_intermediaire= [c_intermediaire; (y(j,:)-output).^2];#calcul du coste
  
end
coste=[coste;sum(c_intermediaire)];
end
m=size(x,1);

coste=coste/(m*2);#division sur 2*m