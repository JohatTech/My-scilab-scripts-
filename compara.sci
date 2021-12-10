exec('C:\Users\Iris Nuñez\miexpneg.sci', -1)
error_max= input("Error maximo aproximado: ");
v = 0:0.1:5;
for n = 1:max(size(v))
    [apr(n), iter(n)] = miexp(v(n), error_max);
    verdadero = exp(v(n));
    errabs(n) = abs((apr(n)-verdadero)/verdadero);
    
end;

scf(0);
clf();


plot2d(v, errabs);
xtitle("Error relativo de la aprox", ... 
        "Valores del Argumento", "Error real relativo")

scf(1);
clf();
plot2d(v, iter);
xtitle("costo computacional", ...
"valores del argumento", "numero de iteraciones")
