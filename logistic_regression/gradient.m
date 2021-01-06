function [vecteur_cost,theta]=gradient(x,y,theta,alpha,iter,lambda)
  t1=0;
  t0=0;
  t2=0;
  t3=0;
  t4=0;
t5=0;
t6=0;
  m=size(x,1);
  vecteur_cost=[];
  for i=1:iter
    for j=1:m
      t0=t0+(hypothese(x,theta,j)-y(j));
    endfor
      for j=1:m
      t1=t1+(hypothese(x,theta,j)-y(j))*x(j,2);
    endfor
    for j=1:m
      t2=t2+(hypothese(x,theta,j)-y(j))*x(j,3);
    endfor
      for j=1:m
      t3=t3+(hypothese(x,theta,j)-y(j))*x(j,4);
      endfor
  
      for j=1:m
      t4=t4+(hypothese(x,theta,j)-y(j))*x(j,5);
    endfor
       for j=1:m
      t5=t5+(hypothese(x,theta,j)-y(j))*x(j,6);
    endfor
       for j=1:m
      t6=t6+(hypothese(x,theta,j)-y(j))*x(j,7);
      endfor
    
      theta(1)=theta(1)-(alpha*t0)/m;
      theta(2)=theta(2)-(alpha*t1)/m;
          theta(3)=theta(3)-(alpha*t2)/m;
                  theta(4)=theta(4)-(alpha*t3)/m;
                                  theta(5)=theta(5)-(alpha*t4)/m;
                                  theta(5)=theta(5)-(alpha*t4)/m;
         theta(6)=theta(6)-(alpha*t5)/m;
                                         theta(7)=theta(7)-(alpha*t6)/m;


    vecteur_cost=[vecteur_cost;cost(x,y,theta,lambda)];
  
endfor


endfunction
