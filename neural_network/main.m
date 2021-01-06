
 load w.txt;
 x=w;
nbr_output=4;
y=zeros(size(x,1),nbr_output);#x=x(1:500,1:19);ableau pour le nombre de output
nb_couche_cache=8;
layer1 = zeros(1,nb_couche_cache); #martrice 1x8 de la couche caché


 for i=1:size(y,1) #modifier le features en une valeur entiere en tableau de 1 et 0
    y(i,x(i,8))=1;
  end
x(:,8) = [];#enlever la colonne de y de la matrice des input
x=x*-1;
poid1= rand(size(x,2),nb_couche_cache); #generer aleatoirement le tableau des poids de la premiere couche
poid2 = rand(nb_couche_cache,nbr_output); #generer aleatoirement le tableau des poids de la 2eme couche
coste=[];
nbr_iteration=120;
#entrainement
for k=1:nbr_iteration #nombre iterration
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
plot_result(x,poid1,poid2,output);
plot_cost(coste);
