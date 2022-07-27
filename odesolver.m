initial_value=0;
final_value=30;
step=0.00001;
y=zeros(length(initial_value:step:final_value),1);
ydot=zeros(length(initial_value:step:final_value),1);

initial_condition=[0,3];
ydot(1,1)=my_function(0,3);
y(1,1)=3;
for i = 1:(length(initial_value:step:final_value)-1)
    
    ydot(i,1)= my_function(i*step, y(i,1));
    y(i+1,1)=ydot(i,1)*step+y(i,1);
    
end
plot(initial_value:step:final_value,y)
