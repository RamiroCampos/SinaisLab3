%%Grupo 1.2
t = [-10:0.01:10];
p1 = [t>=0 & t<=1];         %Pulso retangular unitario
p2 = [(t-3)>=0 & (t-3)<=1]; %Pulso retangular unitario deslocado
p3 = [(t+5)>=0 & (t+5)<=1]; %Pulso retangular unitario deslocado

figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
plot(t,p1)
title('Pulso retangular unitário p(t)'); axis([-10 10 -0.1 1.1])
xlabel('t'); ylabel('p(t)');
saveas(figure1,'p(t).png')

figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
plot(t,p2)
title('Pulso retangular unitário p_2(t) = p(t-3)'); axis([-10 10 -0.1 1.1])
xlabel('t'); ylabel('p_2(t)');
saveas(figure1,'p(t-3).png')

figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
plot(t,p3)
title('Pulso retangular unitário p_3(t) = p(t+5)'); axis([-10 10 -0.1 1.1])
xlabel('t'); ylabel('p_3(t)');
saveas(figure1,'p(t+5).png')