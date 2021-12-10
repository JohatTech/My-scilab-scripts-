xtermino = 1;

y_interpol = fdd(1,1);

for order = 1:n
    xtermino = xtermino*x(i)- (x(i)  - x(order-1));
    interpol_res =  y_interpol(order-1) + fdd(0,order)*xtermino;
    err_aprox = interpol_res - y_interpol(order-1)
    y_interpol = interpol_res
end
