%% Grupo 2.1
t = [-10:0.01:10];
u1 = [t>=0];                % Degrau unitario
u3 = [(t-5)>=0];            % Degrau unitario deslocado
p1 = [t>=0 & t<=1];         % Pulso retangular unitario
r1 = t.*[(t>=0 & t<=1)];    % Rampa unitaria

x1 = 1.*p1; % 1.* para transformar p1, vetor lógico, em um vetor de double
x2 = u1 - u3;
x3 = r1;

w1 = conv(x1,x2,'same');
w2 = conv(x2,x1,'same');
%Convolução de x1*x2
figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
plot(t,w1)
title('Convolução de x_1(t) com x_2(t)'); axis([-10 10 -0.1 102])
xlabel('t'); ylabel('w_1(t)');
saveas(figure1,'w1(t).png')
%Convolução de x2*x1
figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
plot(t,w2)
title('Convolução de x_2(t) com x_1(t)'); axis([-10 10 -0.1 102])
xlabel('t'); ylabel('w_2(t)');
saveas(figure1,'w2(t).png')

w3 = conv(x1,(x2+x3),'same');
w4_1 = conv(x1,x2,'same');
w4_2 = conv(x1,x3,'same');
w4 = w4_1 + w4_2;

%Convolução de x1*(x2+x3)
figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
plot(t,w3)
title('Convolução de x_1(t) com x_2(t) mais x_3(t)'); axis([-10 10 -0.1 155])
xlabel('t'); ylabel('w_3(t)');
saveas(figure1,'w3(t).png')
%Convolução de x1*x2 + x1*x3
figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
plot(t,w4)
title('Convolução de x_1(t) com x_2(t) mais x_1(t) com x_3(t)'); axis([-10 10 -0.1 155])
xlabel('t'); ylabel('w_4(t)');
saveas(figure1,'w4(t).png')
