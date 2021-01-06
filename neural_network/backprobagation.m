function [poid_result1,poid_result2] = backprobagation(input,layer,poid1,poid2,y,output)
    densite_poid2=layer'*(2*(y(1,:)-output).*deriv_hypothse(output))  ;#derivé d1
    densite_poid1=input'*(((2*(y(1,:)-output).*deriv_hypothse(output))*poid2').*deriv_hypothse(layer)); #dérivé d2


    poid_result2=poid2+densite_poid2*0.1;#gradient theta2
    poid_result1=poid1+densite_poid1*0.001;#gradient theta1
endfunction
