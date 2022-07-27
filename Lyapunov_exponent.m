a=1.4;
b=0.3;
range =100;
x_n=0;
x_n1=0;
A= [-2*x_n1,1;b,0];

for i=1: range
    
    
    x_n2= b*x_n+a-x_n1^2;
    x_n=x_n1;
    x_n1=x_n2;
    B= [-2*x_n1,1;b,0];
    
    A=B*A;
end
e=eig(A);

lyapunov_exponent=e(2,1)^(1/range);