sigma= 28;
rho=10;
beta=8/3;
y0= [ -5;0;8];
dt =0.01;
span= 0:dt:10000;
box_size=0.1;
number_x= length([-20:box_size:20]);
number_y=length([ -30:box_size:30]);
number_z= length( [0:box_size:50]);
beta= int32(zeros(number_y,number_x*number_z));



yk=y0;
for i=1 : length(span)
    time = i*dt;
    ykplus1= Runge_kutta(@(t,y)Lorenz(t, y, rho, sigma, beta),dt, time, yk);
    ybox= (yk(2,i)+30)/box_size;
    xbox= (yk(1,i)+20)/box_size+ yk(3,i)/box_size ;
    
    beta(xbox,ybox)=int32(beta(xbox,ybox)+1);
    yk= ykplus1;
    
end

