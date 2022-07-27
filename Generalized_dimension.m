load('Henon_attractor_data.mat')

 
epsilon= 0.001;
    
x=[-2:epsilon:2];
q=size(x);
    
for k=1: (q(1,2)-1)
    for t=1: (q(1,2)-1)
        beta1= size(find( x_n1> x(1,t) & x_n1< x(1,t+1)& b*x_n> x(1,k) & b*x_n< x(1,k+1)));
        beta= beta1(1,1);
        p(t,k)= beta/range;
        
    end
end