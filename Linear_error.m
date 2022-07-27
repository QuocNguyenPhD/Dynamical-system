
plot(distance,n)
lin=polyfit(distance',n,1);


y= lin(1)*distance'+lin(2);
figure(1)
plot(distance',n)
hold on
plot(distance',y)

figure(2)
error= n-y ;

errorbar(y,n, error)
