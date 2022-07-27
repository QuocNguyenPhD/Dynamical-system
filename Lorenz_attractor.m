sigma= 28;
rho=10;
beta=8/3;
y0= [ -5;0;8];
dt =0.01;
span= 0:dt:1000;

Y(: ,1)=y0;
yk=y0;
for i=1 : length(span)
    time = i*dt;
    ykplus1= Runge_kutta(@(t,y)Lorenz(t, y, rho, sigma, beta),dt, time, yk);
    Y= [Y, ykplus1];
    yk= ykplus1;
    
end

