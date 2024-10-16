[t,x]=ode45(@RLC, [0 0.001], [0 0]);
figure(1)
plot(t,x(:,1));
grid on
title("Grafica");
xlabel("Tiempo");
ylabel("Voltaje");