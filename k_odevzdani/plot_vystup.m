
figure;
subplot(2, 1, 1);
plot(vystup.time, vystup.signals(1).values(:,1), vystup.time, vystup.signals(1).values(:,2), vystup.time, vystup.signals(1).values(:,3), 'LineWidth', 2);
legend('Namìøené hodnoty', 'Nelineární model', 'Linearizovaný model');
ylabel('$\varphi_m$ [rad]', 'Interpreter', 'Latex');
xlabel('Èas [s]');
title('Odezvy na vstup $u = 0,1$ pro $\varphi_m$', 'Interpreter', 'Latex');
subplot(2, 1, 2);
plot(vystup.time, vystup.signals(2).values(:,1), vystup.time, vystup.signals(2).values(:,2), vystup.time, vystup.signals(2).values(:,3), 'LineWidth', 2);
legend('Namìøené hodnoty', 'Nelineární model', 'Linearizovaný model');
ylabel('$\varphi_p$ [rad]', 'Interpreter', 'Latex');
xlabel('Èas [s]');
title('Odezvy na vstup $u = 0,1$ pro $\varphi_p$', 'Interpreter', 'Latex');