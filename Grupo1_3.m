%%Grupo 1.3
t = [-10:0.01:10];
r1 = t.*[(t>=0 & t<=1)]; % Rampa unitaria
r2 = t.*[(t-3)>=0 & (t-3)<=1] - 3*[(t-3)>=0 & (t-3)<=1]; 
r3 = (t).*[(t+5)>=0 & (t+5)<=1] + 5*[(t+5)>=0 & (t+5)<=1] ; 
%r2 = [(r1-3)>=0 & (r1-3)<=1];
%r3 = [(r1+5)>=0 & (r1+5)<=1];
figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
plot(t,r1)
title('Ramp unitária r(t)'); axis([-10 10 -0.1 1.1])
xlabel('t'); ylabel('r(t)');
saveas(figure1,'r(t).png')

figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
plot(t,r2)
title('Rampa unitárira r_2(t) = r(t-3)'); axis([-10 10 -0.1 1.1])
xlabel('t'); ylabel('r_2(t)');
saveas(figure1,'r(t-3).png')

figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
plot(t,r3)
title('Rampa unitária r_3(t) = r(t+5)'); axis([-10 10 -0.1 1.1])
xlabel('t'); ylabel('r_3(t)');
saveas(figure1,'r(t+5).png')