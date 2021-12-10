function [Z] = matrizZ(x , M)
    n=  length(x)
    Z = zeros(n,M+1)
    for i = 1:M+1
        for j=1:i
            pot =i+j-2
            suma = 0
            for l = 1:K
                  sum(x(l)^(i+j-2))
                Z(i, j)= suma
                Z(j, i )=suma
            end 
            
        end 
        suma = 0
    end
endfunction
