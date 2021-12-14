

function[L, U]=slu(A, eps)
[n,n]=size(A);
for k=1:n
    if abs(A(k,k))<sqrt(eps)
        error("Se encontró un pivote muy pequeño.")
    end
    L(k,k)=1;
    for i=k+1:n
        L(i,k)=A(i,k)/A(k,k);
        disp(L)
        halt
        for j=k+1:n
            A(i,j)=A(i,j)-L(i,k)*A(k,j);
        end
    end
    for j=k:n
       U(k,j)=A(k,j);
       disp(U)
       halt
    end
end
endfunction 
