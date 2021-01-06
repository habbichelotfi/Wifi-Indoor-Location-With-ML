function []=plotCost(vecteur)
  figure(3);
  subplot(1,4,1);
  plot(vecteur(1,:));
    subplot(1,4,2);
  plot(vecteur(2,:));

      subplot(1,4,3); 
      plot(vecteur(3,:));


        subplot(1,4,4);
          plot(vecteur(4,:));


  
  
  
  endfunction