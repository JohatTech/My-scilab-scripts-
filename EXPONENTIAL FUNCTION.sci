
function [respuesta] = miexp(x, error_max)
    n=1;
    ///variable que guarda la informacion original de el argumento, para no tener error en las comparaciones de los if 
    argumento = x; 
    error_aproxm = 100;
    respuesta=1;
    if x<0 then x = x*(-1)/// hacemos el argumento positivo para calcular e^x 
        xn = x;
    end
    nfactorial=1;
    xn = x;
while error_aproxm > error_max
    ///calculo de los terminos de la e^x
        termino = xn/nfactorial;
        respuesta = respuesta + termino;
        error_aproxm = abs(termino/inv(respuesta));
        /// imprimos el inverso del resultado si el argumento es negativo 
        if argumento< 0 then printf("iteracion :%d, respuesta:%e, termino: %e,  Error aproximado: %e\n",n, inv(respuesta), termino, error_aproxm)
        else printf("iteracion :%d, respuesta:%e, termino: %e,  Error aproximado: %e\n",n, respuesta, termino, error_aproxm)
        end
        n=n+1;
        xn = xn*x;
        nfactorial = nfactorial*n;
end
    ////segun la definicion de e^-x es igual a 1/e^x por lo tanto solamente debemos mostrar el inverso del resultado si este
    ////tiene un argumento negativo 
    if argumento<0 then 
        respuesta = inv(respuesta);
    end
endfunction
