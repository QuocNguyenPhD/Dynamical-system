load('generalize_dimension.mat')

x=[-40:0.01:40];
q= size(x);
p=nonzeros(reshape(p,1,[]));
 for i= 1: q(1,2)
     
     D(i,1)= 1/(x(1,i)-1)* log(sum(p.^x(1,i),'all'))/log(.01);
 end
  