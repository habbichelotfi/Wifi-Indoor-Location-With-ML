function s = hypothese(x)
  
 for i=1:size(x,2)
    s(1,i)=1/(1+exp(-x(1,i)));
    end
endfunction
