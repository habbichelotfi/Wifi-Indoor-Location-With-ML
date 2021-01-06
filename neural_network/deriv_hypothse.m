function [result] = deriv_hypothse(x)
   for i=1:size(x,2)
    result(1,i)=exp(-x(1,i))/((1+exp(-x(1,i)))^2);
    end
endfunction