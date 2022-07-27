load('Lozi_attractor_data.mat')
distance=zeros(range+1,1);
count=0;
for i=1:(range+1)
    distance(i,1)=1/2^(i-1);
end

for i=1:(range+1)
    for j=1:(range+1)
        for k=1:(range+1)
            if j==k
                count=count;
            else
                if (x_n1(j,1)-x_n1(k,1))^2+(b*x_n(j,1)-b*x_n(k,1))^2< distance(i,1)^2
                
                    count=count+1;
                end
            end
                
        end
    end
    N(i,1)=count;
    if N(i,1)==0
        break
    else
        count=0;
    end
end


N=N(1:(i-1),1);



M=2*N./((range+1)*(range+2));

