function [layer1,output] = feedforward (input,weight1,weight2)
    layer1 = hypothese(input*weight1);
    
    output= hypothese(layer1*weight2);
    
endfunction
