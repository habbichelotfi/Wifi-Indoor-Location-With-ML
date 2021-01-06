function plotDataAndHypo(x,y,theta)
  pos1=find(y==1);
  pos2=find(y==2);
  pos3=find(y==3);
    pos4=find(y==4);
figure(1);
   vecteur1=[];
   g1=unique(x(pos1,2),'first');
  for i=1:size(g1)
vecteur1=[vecteur1;hypo(x,theta(1,:),i)];
endfor
vecteur2=[];
   g2=unique(x(pos2,2),'first');
  for i=1:size(g2)
vecteur2=[vecteur2;hypo(x,theta(2,:),i)];
endfor
vecteur3=[];
   g3=unique(x(pos3,2),'first');
  for i=1:size(g3)
vecteur3=[vecteur3;hypo(x,theta(3,:),i)];
endfor
vecteur4=[];
   g4=unique(x(pos4,2),'first');
  for i=1:size(g4)
vecteur4=[vecteur4;hypo(x,theta(4,:),i)];
endfor


subplot(2,2,1);
plot(x(pos1,2),x(pos1,3),'kx','MarkerSize',10,'Color','g');
  hold on;
    plot(x(pos2,2),x(pos2,3),'ko','MarkerSize',10,'Color','r');
  hold on;
   plot(x(pos1,4),x(pos1,5),'kx','MarkerSize',10,'Color','g');
  hold on;
    plot(x(pos2,4),x(pos2,5),'ko','MarkerSize',10,'Color','r');
  hold on;
   plot(x(pos1,6),x(pos1,7),'kx','MarkerSize',10,'Color','g');
  hold on;
    plot(x(pos2,6),x(pos2,7),'ko','MarkerSize',10,'Color','r');
  hold on;
  plot(g1,vecteur1,'-');

subplot(2,2,2);
plot(x(pos1,2),x(pos1,3),'kx','MarkerSize',10,'Color','g');
  hold on;
    plot(x(pos2,2),x(pos2,3),'ko','MarkerSize',10,'Color','r');
  hold on;
   plot(x(pos1,4),x(pos1,5),'kx','MarkerSize',10,'Color','g');
  hold on;
    plot(x(pos2,4),x(pos2,5),'ko','MarkerSize',10,'Color','r');
  hold on;
   plot(x(pos1,6),x(pos1,7),'kx','MarkerSize',10,'Color','g');
  hold on;
    plot(x(pos2,6),x(pos2,7),'ko','MarkerSize',10,'Color','r');
  hold on;
 plot(g2,vecteur2,'-');


subplot(2,2,3);
plot(x(pos1,2),x(pos1,3),'kx','MarkerSize',10,'Color','g');
  hold on;
    plot(x(pos2,2),x(pos2,3),'ko','MarkerSize',10,'Color','r');
  hold on;
   plot(x(pos1,4),x(pos1,5),'kx','MarkerSize',10,'Color','g');
  hold on;
    plot(x(pos2,4),x(pos2,5),'ko','MarkerSize',10,'Color','r');
  hold on;
   plot(x(pos1,6),x(pos1,7),'kx','MarkerSize',10,'Color','g');
  hold on;
    plot(x(pos2,6),x(pos2,7),'ko','MarkerSize',10,'Color','r');
  hold on;
 plot(g3,vecteur3,'-');


subplot(2,2,4);
plot(x(pos1,2),x(pos1,3),'kx','MarkerSize',10,'Color','g');
  hold on;
    plot(x(pos2,2),x(pos2,3),'ko','MarkerSize',10,'Color','r');
  hold on;
   plot(x(pos1,4),x(pos1,5),'kx','MarkerSize',10,'Color','g');
  hold on;
    plot(x(pos2,4),x(pos2,5),'ko','MarkerSize',10,'Color','r');
  hold on;
   plot(x(pos1,6),x(pos1,7),'kx','MarkerSize',10,'Color','g');
  hold on;
    plot(x(pos2,6),x(pos2,7),'ko','MarkerSize',10,'Color','r');
  hold on;
 plot(g4,vecteur4,'-');




endfunction
