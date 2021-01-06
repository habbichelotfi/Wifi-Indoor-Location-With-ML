
function [] = plot_cost(cost)
  figure
   subplot(1,4,1);
   plot(cost(:,1))
   subplot(1,4,2);
    plot(cost(:,2))    
   subplot(1,4,3);
   plot(cost(:,3))
   subplot(1,4,4);
   plot(cost(:,4))

endfunction