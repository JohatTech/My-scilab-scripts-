

function [deter,sol] = gauss ( a , b )

 // Esta funcion implementa el metodo de Gauss
 // para la solucion de sistemas de ecuaciones
 // li n e al e s . Ademas, la funcion calcula el
// determinante de la matriz .
 // Forma de uso :
 // [ deter , s ol ] = gauss (A, B )
  // para Ax=B
 // A debe ser cudrada y B tener el mismo numero de f i l a s .

 // Verificamos primero s i l o s datos tienen la dimension
// correc ta .
 [n,m] = size ( a ) ;
 [nb,mb] = size ( b ) ;
 if n~=m then
  error("La matriz A debe ser cuadrada")
 end;

 if n~=nb then
   error ( " La matriz B debe tener e l mismo numero de l in e a s que A" )
    end;

 // Todo bien en cuanto a dimensiones . . . Creamos ahora
 // la matriz aumentada

 c = [ a , b ] ;

 // Realizamos ahora la reduccion por lin ea s y columnas

disp(c),
halt()
 for i = 1:n-1
  // Para cada lin ea . .
     pivote = c ( i , i ) ;
     for j = i +1:n
         c (j,:) = c (j ,: )-c(i , : )*(c( j , i )/pivote) ;
         disp (c) , halt ; // Comando usado para ayudar a depurar
     end;
 end;

 // en e s t e punto , s i no hemos encontrado un pivo te
 // cero o muy pequeno , estamos bien .
 // El determinante es la mul tiplicacion de la
 // diagonal

deter = 1;
 for i = 1:n
  deter = deter *c ( i , i ) ;
 end;

 // Ahora haremos la sub s ti tuci on hacia atras para encontrar
 // la solucion

 for i = n:-1:1
 sol ( i ) = c ( i , n+1 );
     for j = i +1:n
       sol ( i ) = sol ( i )-c ( i , j ) * sol ( j ) ;
     end;
    sol ( i ) = sol ( i ) / c ( i , i ) ;
     disp ( sol ) ,
     halt()
end;
endfunction
