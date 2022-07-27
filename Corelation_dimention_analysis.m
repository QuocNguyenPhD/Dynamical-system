load('Lorenz_CD.mat')

fiting_line=polyfit(log(distance(1,1:(i-1))), log(M),1)
y=fiting_line(1)*log(distance(1,1:(i-1)))+fiting_line(2);
figure(1)
plot(log(distance(1:(i-1),1)), log(M))
hold on
plot(log(distance(1:(i-1),1)),y)