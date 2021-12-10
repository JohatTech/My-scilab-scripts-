
function [Z, Y] = matrizBuilder(x , y, M)
    n=  length(x)
    Z = zeros(M+1, M+1)
    Y = zeros(M+1, 1)
    for i = 1: M+1
        for j=1:i
            pot =i+j-2
            suma = 0
            for l = 1:n
                suma = suma + x(1)^pot
            end 
            Z(i, j)= suma
            Z(j, i )=suma
        end 
        suma = 0
        for l=1:n
            suma = suma + y(1)*(x(1)^(i-1))
        end
         Y(i,1) = suma
      
    end
endfunction
