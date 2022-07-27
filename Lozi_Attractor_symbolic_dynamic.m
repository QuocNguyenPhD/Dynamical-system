range=100000;
a=1.7;
b=.2;

x_n2=zeros(range,1);
x_n1=zeros(range,1);
x_n=zeros(range,1);

fix_point=[1/3;1/15];
eigen_vector=[-2;1];
epsilon=1/range;

x_n(1,1)= fix_point(1,1)+epsilon*eigen_vector(1,1);
x_n1(1,1)= fix_point(2,1)+epsilon*eigen_vector(2,1);
for i= 1:range
    x_n2(i,1)= b*x_n(i,1)+(a-1)-a*abs(x_n1(i,1));
    x_n(i+1,1)=x_n1(i,1);
    x_n1(i+1,1)= x_n2(i,1);
end
x_n2(range+1,1)=b*x_n(range+1,1)+(a-1)-a*abs(x_n1(range+1,1));
figure(1)
plot(x_n1,b*x_n,'.')
xlabel('x_n1')
ylabel('b*x_n')


% symbolic sequence

for i=1:(range+1)
    if x_n(i,1)< 0
        symbolic_sequence(i,1)=0;
    else
        symbolic_sequence(i,1)=1;
    end
end
point_number=30;
for i=(point_number+1): (range-(point_number-1))
    
    for j= i: (i+point_number-1)
        c(j-i+1,1)= mod(sum(symbolic_sequence(i:j,1)),2);
        
    end
    
    for k=1:point_number
        c_prime(k,1)=c(k,1)/2^k;
    end
        c_prime2(i-point_number,1)=sum(c_prime);
    
    for m= 1:point_number
        d(m,1)=mod(sum(1-symbolic_sequence((i-m):i,1)),2);
    end
    
    for n=1:point_number
        d_prime(n,1)=d(n,1)/2^n;
    end
    
     d_prime2(i-point_number,1)=1-sum(d_prime);
    
end
figure(2)
plot(c_prime2,d_prime2,'.')