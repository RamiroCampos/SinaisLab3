%%Grupo 1.1
t = [-10:0.01:10];
u1 = [t>=0];        % Degrau unitario
u2 = [(t-3)>=0];    % Degrau unitario deslocado
u3 = [(t-5)>=0];    % Degrau unitario deslocado
figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');

plot(t,u1)
title('Degrau unitário u(t)'); axis([-10 10 -0.1 1.1])
xlabel('t'); ylabel('u(t)');
saveas(figure1,'u(t).png')

figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
plot(t,u2)
title('Degrau unitário u_2(t) =  u(t-3)'); axis([-10 10 -0.1 1.1])
xlabel('t'); ylabel('u_2(t)');
saveas(figure1,'u(t-3).png')

figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
plot(t,u3)
title('Degrau unitário u_3(t-5)'); axis([-10 10 -0.1 1.1])
xlabel('t'); ylabel('u_3(t)');
saveas(figure1,'u(t-5).png')