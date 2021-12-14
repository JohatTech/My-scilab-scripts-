function [sol]=gseidel(a, b,L)
     [n,m]=size(a);
    [nb,mb]=size(b);
    if n~=m then
        error("La matriz de coeficientes debe ser cuadrada.")
    end;
    if n~=nb then
        error("La matriz de resultados debe tener el mismo numero de lineas.")  
    end;
    
    sol=zeros(n,1);
    solviejo=ones(n,1);
    diffsol=max(abs(solviejo-sol));
    diffsolviejo=diffsol;
    iter=1
    while diffsol>0.0000001
        mprintf("\nn---------------\n Iteracion: %d\n",iter);
        mprintf("diffsol = %e, diffsolviejo = %e\n",diffsol,diffsolviejo)
        if diffsol> diffsolviejo then
            printf("El algoritmo esta divergiendo. Adios!\n")
            break
    mprintf("Cambio = %e\n", max(abs(solviejo-sol)))
    disp (sol),
    
    halt
    solviejo=sol;
    for i=1:n
        temp=0;
        while c<n+1
            sol(c,1)=L*sol(c,1)+(1-L)*sol(c,1);
            c=c+1;
           end;
        for j=1:n
            if j~=i then
                temp=temp+a(i,j)*sol(j);
            end;
        end;
        sol(i)=(b(i)-temp)/a(i,i);
          
    end;
    diffsolviejo=diffsol;
    diffsol=max(abs(solviejo-sol));
    iter=iter+1
end
end
endfunction
