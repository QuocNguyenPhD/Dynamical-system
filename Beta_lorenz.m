sigma= 28;
rho=10;
beta=8/3;
y0= [ -5;5;8];
dt =0.01;
span= 0:dt:100;
x_box=[-20:1:20];
y_box=[-20:1:20];
z_box=[0:1:50];
yk=y0;
for i=1 : length(span)
    time = i*dt;
    ykplus1= Runge_kutta(@(t,y)Lorenz(t, y, rho, sigma, beta),dt, time, yk);
    
    xbox= ceil(
    
    
    yk= ykplus1;
    
end

