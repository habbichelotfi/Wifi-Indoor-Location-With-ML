
clc;
clear;
load w.txt;
data=w;
x=data(1:100,1:7);
y=data(1:100,8);


rand_nums=randperm(100);
%60% pour le training

donnee_apprentissage=x(rand_nums(1:60),:);
classe_label=y(rand_nums(1:60),:);
%20% pour le test
donnee_test=x(rand_nums(61:80),:);
classe_test=y(rand_nums(61:80),:);
%et enfin 20% pour la validation
donnee_de_valid=x(rand_nums(81:100),:);
classe_valid=y(rand_nums(81:100),:);
 
% J'ai choisis la finction rbf et un C=1 et gamma=1 cross validation de 5
% folds et h pour une heuristique pour allez plus rapide
training = svmtrain(classe_label, donnee_apprentissage, '-s ---SVC -t --radial basis function -c 1 -g 1  -h -v 5 ');
[test_predi] = svmpredict(classe_test, donnee_test, training);
[class_predi] = svmpredict(classe_valid, donnee_de_valid, training);


