load('test2.mat')

q=reshape(q,[],1);
tao= q.*D-D;

for i=1: (size_q-4)
    test= polyfit(q(i:(i+4),1),tao(i:(i+4),1),1);
    alpha(i,1)= test(1,1);
    f_a(i,1)= alpha(i,1)*q(i,1)-tao(i,1);
end
