load('poincare_section_lorenz.mat')

for i =1:length(X)
    distance(i,1)=1/i;
end
count=0;
for i= 1:length(X)
    for j= 1:length(X)
        for k= j:length(X)
            if j==k
                count=count;
            elseif (X(1,j)-X(1,k))^2+ (X(2,j)-X(2,k))^2 < distance(i,1)^2
                count= count+1;
            end
        end
    end
    N(i,1) =count;
    if N(i,1) ==0
        break
    else
        count=0;
    end
end
     

N=N(1:(i-1),1);



M=2*N./((range+1)*(range+2));
