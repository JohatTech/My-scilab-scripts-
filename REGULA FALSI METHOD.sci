//Funcion para regula falsi
function [xr,iter] = falsimod(fun,xl,xu,es,imax);
    fl=fun(xl);
    fu=fun(xu);
    il = 0
    iu = 0
    if fl*fu > 0 then
        error("Error, los valores inciales no parecen encerrar una raiz")
    end
    iter=1;
    xr=xl;
    while iter <= imax
        xrold= xr;
        xr = xu - fu*(xl-xu)/(fl-fu);
        iter=iter+1;
        fr=fun(xr)
        if xr <> 0 then ea = abs((xr-xrold)/xr)*100; 
        end
        test=fr*fl;
         if test<0 then
            xu=xr;
            fu=fun(xu);
            iu = 1;
            il = il +1;
            if il >= 2 then fl = fl/2
                end
        elseif test>0 then
            xl=xr;
            fl=fr;
            il = 1;
            iu = iu +1;
            if iu >= 2 then fu = fu/2
                end
         else
             ea = 0
        end
      if (ea<es )or(iter>=imax)
        break
      end
    end;
printf("iteraciones: %d, raiz = %e, error aproximado = %e\n",iter,xr,ea)
endfunction
