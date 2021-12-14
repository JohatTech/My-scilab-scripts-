x =  [1 4 6 5 3 1.5 2.5 3.5];
y = log(x);
n = 7;
//calculo de los coeficientes de interpolacion de newton 
    for i=1:n+1
        fdd(i,1)=y(i)
    end
    for j =2:n+1
        for i=1:n-j+2
            fdd(i,j) = ( fdd(i+1,j-1 )  - fdd(i, j-1) )/ ( x(j+i-1) - x(i) );
        end
    end
ddf = fdd
xtermino = 1;
y_interpol(1) = ddf(1,1);
///valor que queremos aproximar 
xi = 2;
///polinomio de interpolacion de newton
for order = 2:n+1
    xtermino = xtermino*(xi  - x(order-1))
    interpol_res =  y_interpol(order-1) + ddf(1,order)*xtermino
    err_aprox (order-1)= interpol_res - y_interpol(order-1)
    y_interpol(order) = interpol_res
    printf("Orden:%i, F(x):%f, Error Estimado:%f\n", order-1, interpol_res, err_aprox(order-1) );
end;
//grafica del error vs el orden
orden= [1; 2 ;3; 4;5; 6; 7 ]
xtitle ( "error aproximado VS orden" , "Error Aproximado " , "Orden" );
plot2d(err_aprox, orden);









