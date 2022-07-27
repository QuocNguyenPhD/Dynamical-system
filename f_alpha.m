load('Generalize_dimension_spectrum.mat')

x=reshape(x,[],1);
tao= x.*D-D;

for i=1: q(1,2)-5
   
    test= polyfit(x(i:(i+4),1),tao(i:(i+4),1),1);
    alpha(i,1)= test(1,1);
    f_a(i,1)= alpha(i,1)*x(i,1)-tao(i,1);
        
    
end

