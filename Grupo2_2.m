%% Grupo 2.2
t = [-10:0.1:10];           % tempo de amostragem(discreto)
u1 = [t>=0];                % Degrau unitario
u3 = [(t-5)>=0];            % Degrau unitario deslocado
p1 = [t>=0 & t<=1];         % Pulso retangular unitario
r1 = t.*[(t>=0 & t<=1)];    % Rampa unitaria

x1 = 1.*p1; % 1.* para transformar p1, vetor lógico, em um vetor de double
x2 = u1 - u3;
x3 = r1;
%wd , 'd' de discreto
wd1 = conv(x1,x2,'same');
wd2 = conv(x2,x1,'same');
wd3 = conv(x1,(x2+x3),'same');
wd4_1 = conv(x1,x2,'same');
wd4_2 = conv(x1,x3,'same');
wd4 = wd4_1 + wd4_2;

%Convolução de x1*x2
figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
stem(t,wd1)
title('Convolução de x_1(n) com x_2(n)'); axis([-10 10 -0.1 11])
xlabel('n'); ylabel('wd_1(n)');
saveas(figure1,'wd1(n).png')
%Convolução de x2*x1
figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
stem(t,wd2)
title('Convolução de x_2(n) com x_1(n)'); axis([-10 10 -0.1 11])
xlabel('n'); ylabel('wd_2(n)');
saveas(figure1,'wd2(n).png')

%Convolução de x1*(x2+x3)
figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
stem(t,wd3)
title('Convolução de x_1(n) com x_2(n) mais x_3(n)'); axis([-10 10 -0.1 17])
xlabel('n'); ylabel('wd_3(n)');
saveas(figure1,'wd3(n).png')
%Convolução de x1*x2 + x1*x3
figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
stem(t,wd4)
title('Convolução  de x_1(n) com x_2(n) mais x_1(n) com x_3(n)'); axis([-10 10 -0.1 17])
xlabel('n'); ylabel('wd_4(n)');
saveas(figure1,'wd4(n).png')
