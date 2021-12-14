function[xr,iter]=newton(fun,der,x0,es,imax)
    xr=x0;
    iter=1;
    while(iter<imax)
        Xlast=xr;
        Fn=fun(Xlast);
        Dr=der(Xlast);
        xr=Xlast-Fn/Dr
        if abs(xr-Xlast)<abs(xr*es) then
            return
        end;
        iter=iter+1
        printf("iter:%d, xi=%e, error= %e, Fn(xi)=%e,Fn*(x):%e\n",iter,xr,es,Fn,Dr)
    end
endfunction

x=-8:0.02:8;
y=exp(-x)-x;
plot2d(x,y)
xgrid(2,1,4);
ylabel("y","fontsize",3,"color","red")
xlabel("x","fontsize",3,"color","red")
