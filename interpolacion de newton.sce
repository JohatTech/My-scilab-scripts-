
n = 7;
x =  [1; 4; 6; 5; 3; 1.5; 2.5; 3.5];
y = [1.38; 1.79; 1.60; 1.09; 0.40; 0.91; 1.25];
fdd = zeros(n);
for i = 0 :n 
    fdd(i, 0) = y(i,0)
end

for j =1:n 
    for i=0:n-j
        fdd(i,j) = (fdd(i+1,j-1 )  - fdd(i, j-1))/ (x(i+j) - x(i) );
    end
end

xtermino = 1;

y_interpol = fdd(0,0);

for order = 1:n
    xtermino = xtermino*x(i)- (x(i)  - x(order-1))
    interpol_res =  y_interpol(order-1) + fdd(0,order)*xtermino
    err_aprox = interpol_res - y_interpol(order-1)
    y_interpol = interpol_res
end
