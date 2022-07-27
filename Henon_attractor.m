range=10000000;
a=1.4;
b=0.3;

x_n2=zeros(range,1);
x_n1=zeros(range,1);
x_n=zeros(range,1);



for i= 1:range
    x_n2(i,1)= b*x_n(i,1)+a-x_n1(i,1)^2;
    x_n(i+1,1)=x_n1(i,1);
    x_n1(i+1,1)= x_n2(i,1);
end
x_n2(range+1,1)=b*x_n(range+1,1)+(a-1)-a*abs(x_n1(range+1,1));
figure(1)
plot(x_n1,b*x_n,'.')
xlabel('x_n1')
ylabel('b*x_n')








