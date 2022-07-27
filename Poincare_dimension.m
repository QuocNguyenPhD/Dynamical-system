load('poincare_section_lorenz.mat')

box_size=0.01;

x_range= [-15:box_size:15];
y_range= [-30:box_size:30];

beta=zeros(length(x_range), length(y_range));
clear x_range y_range

for i= 1:length(X)
    xbox=ceil((X(1,i)+15)/box_size);
    ybox=ceil((X(2,i)+30)/box_size);
    
    beta(xbox,ybox)=beta(xbox,ybox)+1;
end

size_beta= size(beta);
size_beta_x= size_beta(1,1);
size_beta_y= size_beta(1,2);
count=0;
for i= 1:100
    cx=mod( size_beta_x, i);
    cy=mod( size_beta_y, i);
    for j= 1:(size_beta_x- cx)/i
        for k= 1: ( size_beta_y-cy)/i
            
            if sum( beta( (i*(j-1)+1):(i*j), (i*(k-1)+1): (i*k)),'all') > 0
                count =count+1;
            end
        end
    end
    box_counting(i,1)=count;
    count=0;
    
    size_box(i,1)= box_size*i;
end