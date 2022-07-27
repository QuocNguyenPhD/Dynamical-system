sigma= 28;
rho=10;
beta=8/3;
y0= [ -5;0;8];
dt =0.01;
span= 0:dt:1000000;
z_plane= 10;
X(:,1)= [0;0];
yk=y0;
for i=1 : length(span)
    time = i*dt;
    ykplus1= Runge_kutta(@(t,y)Lorenz(t, y, rho, sigma, beta),dt, time, yk);
    if (ykplus1(3,1)> z_plane & yk(3,1)< z_plane) | (ykplus1(3,1)< z_plane & yk(3,1)> z_plane)
        q= (z_plane-yk(3,1))/(ykplus1(3,1)-yk(3,1));
        x=[((ykplus1(1,1)-yk(1,1))*q+ yk(1,1)); ((ykplus1(2,1)-yk(2,1))*q+ yk(2,1))];
        
        X=[X,x];
        
    end    
    yk= ykplus1;
    
end

