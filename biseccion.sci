
function [xr, iter, ea] = Bisect(f,xl,xu,es,imax)
fl = f( xl ) 
iter = 1 
xr = xl ;
while iter < imax
    xrold = xr;
    xr = ( xl + xu)/2;
    fr = f(xr);
    iter = iter+1
    if xr~=0 then ea = abs((xr-xrold)/xr)*100
    end
    test = fl*fr
    if test < 0  then 
        xu = xr
    elseif test>0 then
          xl = xr 
          fl = fr
    else ea = 0
    end
    if (ea<es )or(iter>=imax)
        break
    end
end

endfunction
