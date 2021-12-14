//Funcion para biseccion
function [xr,iter] = bisec(fun,xl,xu,es,imax);
    fl=fun(xl);
    fu=fun(xu);
    if fl*fu > 0 then
        error("Error, los valores inciales no parecen encerrar una maiz")
    end
    iter=1;
    xr=xl; 
    while iter <=imax
        xrold= xr;
        xr=(xl+xu)/2;
        fr=fun(xr) 
        iter=iter+1;
        if xr~=0 then 
           ea = abs((xr-xrold)/xr)*100;
        end
         test=fr*fl
    
    if test<0 then
        xu=xr;
        fu=fr;
    elseif test>0 then
        xl=xr;
        fl=fr;
        
     else
        ea = 0;
    end;
     if (ea<es )or(iter>=imax)
        break
      end
    end;
   
printf("iteraciones: %d, raiz = %e, error aproximaddo = %e\n",iter,xr,ea)
endfunction
