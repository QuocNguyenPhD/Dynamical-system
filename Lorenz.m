function Dy= Lorenz(t, y, rho, sigma, beta)

Dy= [ rho*( y(2)-y(1)); y(1)*(sigma-y(3))-y(2); y(2)*y(1) - beta* y(3)];
