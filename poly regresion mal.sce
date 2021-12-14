function [a,pol]=PolyReg (ind,dep,gr)
    //Funcion para una regresion polinomial
    // Donde  ind=independiente dep=dependiente gr=grado del polinomio
    n=length (dep);
    //variables auxiliares
    A=zeros (gr+1);
    Diag=zeros (gr+1,1);
    Diag(1)=n;
    //construyendo la diagronal de la matriz A
    k=2
    for i=2:gr+1
        Diag(i)=sum(ind^k)
        k=k+2
    end
    //construyendo la otra diagonal
    k=gr;
    for j=1:gr
        var=zeros (k,1);
        var(1)=sum(ind^j);
        m=j;
    
            for i=j+1:gr
        var(i-j+1)=sum(ind^(m+2));
        m=m+2
            end
    A=A+diag(var,j);
    k=k-1;
end
A=A+A'+diag(Diag);
b=zeros (gr+1,1);
b(1)=sum(dep);
j=1;
for i=2:gr+1
    b(i)= dot(dep,ind^j);
    j=j+1;
end
x=A/b
syms z
pol=a(1);
for i=1:gr
    pol=pol+a(i+1)*z^i;
end

endfunction
