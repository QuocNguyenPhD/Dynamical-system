[time,value]=ode45(@dif,[0:0.0001:30],[0,2]);

x=value(:,1);
xdot=value(:,2);
v=1/2*(x.^6+x.^(10)+2*x.^8);
E=xdot.^2/2+ v;

figure(1)
plot(time, x)
title('d^2x/dt^2=(20x^3+6x)/(5x^4+3x^2)*(dx/dt)^2-(x^3+x^5)(5x^4+3x^2)')
xlabel('time')
ylabel('x')



figure(2)
plot(time, xdot)
title('d^2x/dt^2=(20x^3+6x)/(5x^4+3x^2)*(dx/dt)^2-(x^3+x^5)(5x^4+3x^2)')
xlabel('time')
ylabel('xdot')

figure(3)
plot(x, xdot)
title('d^2x/dt^2=(20x^3+6x)/(5x^4+3x^2)*(dx/dt)^2-(x^3+x^5)(5x^4+3x^2)')
xlabel('x')
ylabel('xdot')

figure(4)
plot(x,E)
title('E=xdot^2/2+ 1/2*(x^6+x^10+2x^8)')
xlabel('x')
ylabel('E')

figure(5)
plot(time,E)
title('E=xdot^2/2+ 1/2*(x^6+x^10+2x^8)')
xlabel('time')
ylabel('E')

figure(6)
plot(xdot,E)
title('E=xdot^2/2+ 1/2*(x^6+x^10+2x^8)')
xlabel('xdot')
ylabel('E')

figure(7)
plot(x,E)
title('E=xdot^2/2+ 1/2*(x^6+x^(10)+2x^8)')
xlabel('x')
ylabel("E")

figure(8)
plot(time,v)
title('v=1/2*(x^6+x^10+2*x^8)')
xlabel('time')
ylabel('v')

figure(9)
plot(x,v)
title('v=1/2*(x^6+x^10+2*x^8)')
xlabel('x')
ylabel('v')

figure(10)
plot(xdot,v)
title('v=1/2*(x^6+x^10+2*x^8)')
xlabel('xdot')
ylabel('v')