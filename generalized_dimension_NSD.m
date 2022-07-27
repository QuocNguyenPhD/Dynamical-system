

load('test.mat')

p=beta/range;

q=[-30.005:0.1:30.005];
size_q= size(q);
size_q= size_q(1,2);

for i=1: size_q
    D(i,1)= 1/(q(1,i)-1)*log(sum(p.^q(1,i),'all'))/log(0.1);
end
