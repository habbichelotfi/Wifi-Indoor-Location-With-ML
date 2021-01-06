function hyp=hypothese(x,theta,i)
   hyp=1.0 ./(1.0+exp(-(theta(1)+theta(2)*x(i,2)+theta(3)*x(i,3)+theta(4)*x(i,4)+theta(5)*x(i,5)+theta(6)*x(i,6)+theta(7)*x(i,7))));
endfunction
