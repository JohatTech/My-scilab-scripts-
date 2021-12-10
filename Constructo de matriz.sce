
function [A,b] = matrizBuilder(x , y, M)
    n=  length(x)
    A = zeros(M+1, M+1)
    b = zeros(M+1, 1)
    for i = 1: M+1
        for j=1:i
            pot =i+j-2
            suma = 0
            for l = 1:n
                suma = suma + x(l)^pot
            end 
            A(i, j)= suma
            A(j, i )=suma
        end 
        suma = 0
        for l=1:n
            suma = suma + y(l)*(x(l)^(i-1))
        end
         b(i,1) = suma
      
    end
endfunction
