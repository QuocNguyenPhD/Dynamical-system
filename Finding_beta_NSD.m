x_box=[-2:0.0001:2];
x_boxsize= size(x_box);
x_boxsize=x_boxsize(1,2);
y_box=[-.6:0.0001:.6];
y_boxsize=size(y_box);
y_boxsize=y_boxsize(1,2);
beta= zeros(x_boxsize,y_boxsize);
x_n=1.3227;
x_n1=-0.5677;
a=1.4;
b=0.3;
range=1000000;


for i=1: range
   
    x_n2= b*x_n+a-(x_n1)^2;
    
    xbox= ceil(1/0.0001 *(x_n2+2));
    ybox=ceil(1/0.0001*(b*x_n1+0.6));
    
    beta(xbox,ybox)= beta(xbox,ybox)+1;
    x_n=x_n1;
    x_n1=x_n2;
    
end
beta=nonzeros(reshape(beta, 1, []));