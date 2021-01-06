function resu=cost(x,y,theta,lambda)
  s=0;
  m=size(x,1);
  for i=1:m
    if y(i)==0,
          s=s-log(1-hypothese(x,theta,i)); #pour y=0 la classe negative
          
    endif
    if y(i)==1,
      s=s-log(hypothese(x,theta,i));#pour y=1 la classe positive
    endif
  endfor

resu = -(1/m)*sum(y.*log(sigmoid(x(:,2:8)*theta))+(1-y).*log(1-sigmoid(x(:,2:8)*theta)))+(lambda/(2*m))*sum(theta.^2);

endfunction
