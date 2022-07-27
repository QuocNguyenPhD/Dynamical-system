sigma= 28;
rho=10;
beta=8/3;
y0= [ -2;0;8];
dt =0.01;
span= 0:dt:100;

A= [-rho, rho, 0; sigma - y0(3,1), -1,-y0(1,1); y0(2,1), y0(1,1),-beta];
yk=y0;
for i=1 : length(span)
    time = i*dt;
    ykplus1= Runge_kutta(@(t,y)Lorenz(t, y, rho, sigma, beta),dt, time, yk);
    B= [ -rho, rho, 0; sigma-ykplus1(3,1), -1,-ykplus1(1,1); ykplus1(2,1), ykplus1(1,1),-beta];
    yk= ykplus1;
    A=B*A;
    
end

e=eig(A);

lyapunov_exponent=e(2,1)^(1/length(span));