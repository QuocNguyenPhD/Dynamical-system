function output= Runge_kutta(fun, dt, tk, yk)

f1= fun(tk,yk);
f2= fun(tk+ dt/2, yk +dt*f1/2);
f3= fun(tk+ dt/2, yk +dt*f2/2);
f4= fun(tk+ dt, yk +dt*f3);

output= yk+ dt/6*(f1+2*f2+2*f3+f4);
