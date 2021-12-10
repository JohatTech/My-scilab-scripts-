
function [respuesta] = exponencial(x, error_max)
    n=1;
    respuesta=1;
    xn = x;
    nfactorial=1;
    error_aproxm = 100;
    while error_aproxm > error_max
        termino = xn/nfactorial;
        respuesta = respuesta + termino
        error_aproxm = abs(termino/respuesta);
        printf("iteracion :%d, respuesta:%e, termino: %e,  Error aproximado: %e\n",n, respuesta, termino, error_aproxm)
        n=n+1;
        xn = xn*x;
        nfactorial = nfactorial*n;
    end
    
endfunction
