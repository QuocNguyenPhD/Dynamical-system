lload('Lozi_attractor_graphing_data.mat')
point=[x_n1,b*x_n];
distance=transpose(pdist(point));
sorted_distance=sort(distance);
dimension=size(distance);
count=0;
j=1;

for i= 1: dimension(1,1)
    bound(i,1)= (1/2)^(i-2);
end

for j= 1:dimension(1,1)
    for k=1 :dimension(1,1)
        if bound(j,1) >= sorted_distance( k,1)
            count=count+1;

        end
        
    end
    if count == 0
        break
    end
    amount(j,1)=count;
    count=0;
end
amount_size=size(amount);
plot(log(bound(1:(amount_size(1,1)),1)),log(amount/dimension(1,1)))
polyfit(log(bound(1:(amount_size(1,1)),1)),log(amount/dimension(1,1)),1)
