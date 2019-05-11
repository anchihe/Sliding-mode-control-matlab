clear all
close all
clc

%% System x_double_dot + a(t)* x_dot^2 * cos(3*x) = u, 1<=a(t)<=2
m=1; 

%% Sampling time
tsim = 20; %simulation time
ts = 0.001; %sampling time
sim('SMC.slx');

%% Plot 
figure;
plot(Phase(:,1), Phase(:,2))
xlabel('e')
ylabel('edot');
title('Phase plot')

figure;
hold on;
t = 0:ts:20;
plot(t, reference(:,1), 'b', 'Linewidth', 2)
plot(t, reference(:,2), '-.r', 'Linewidth', 1.5)
xlabel('time (s)');
ylabel('X (m)');
title('Tracking performance')
legend('reference', 'actual')




%other graph can be found in the simulink model