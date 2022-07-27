x_box=[-2:0.0001:2];
x_boxsize= size(x_box);
x_boxsize=x_boxsize(1,2);
y_box=[-.6:0.0001:.6];
y_boxsize=size(y_box);
y_boxsize=y_boxsize(1,2);
beta= zeros(x_boxsize,y_boxsize);
x_n=0;
x_n1=0;
a=1.4;
b=0.3;
range=100000000000;
for i=1: range
    x_n2= b*x_n+a-(x_n1)^2;
    
    xbox= ceil(1/0.0001 *(x_n2+2));
    ybox=ceil(1/0.0001*(b*x_n1+0.6));
    
    beta(xbox,ybox)= beta(xbox,ybox)+1;
    x_n=x_n1;
    x_n1=x_n2;
    
end

size_beta= size(beta);
size_beta_x= size_beta(1,1);
size_beta_y= size_beta(1,2);
count =0;

for i=1:500
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
    

end