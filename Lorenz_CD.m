load('Lorenz.mat') 
N=zeros(length(Y),1);
for i= 1:length(Y)
    distance(i,1)=1/i;
end

for k=1: length(Y)
    for i= 1:length(Y)
        for j=(i+1): length(Y)
            D=((Y(1,i)-Y(1,j))^2+(Y(2,i)-Y(2,j))^2+(Y(3,i)-Y(3,j))^2)^(1/2);
        
            if  distance(k,1)>= D
                N(k,1)= N(k,1)+1;
            end
        
        
        end
        
    end
    if N(k,1) ==0
        break
    end
end

N=nonzeros(N);
    
M=2*N./((length(Y)+1)*(length(Y)));