load('Henon_attractor_data.mat')

count= zeros(range+1,1);

 
for i=1:(range+1)
    epsilon (i,1)= 1/(i+1);
    
    x=[-1:epsilon(i,1):1];
    
    q=size(x);
    
    for k=1: q(1,2)-1
        for t=1: q(1,2)-1
            if any( x_n1> x(1,t) & x_n1< x(1,t+1)& b*x_n> x(1,k) & b*x_n< x(1,k+1)) ==1
                count(i,1)= count(i,1)+1;
            end
            
        end
    end
end

