%%
% % %Kyvadlo - odezva na poruchu s regulï¿½torem poly
% close all;
% 
% %%
% %Odezva polohy
% figure;
% t_odezva = kyvadlo_odezva_porucha.time;
% sig_odezva = kyvadlo_odezva_porucha.signals.values(:,2);
% plot([t_odezva(1) t_odezva(end)], -pi/2*ones(1,2), 'color', 'green');
% hold on;
% plot(t_odezva, sig_odezva, 'b', 'LineWidth', 2);
% grid on;
% xlim([t_odezva(1), t_odezva(end)]);
% xlabel('Èas [s]');
% ylabel('Poloha kyvadla [rad]');
% legend('Referenèní poloha', 'Odezva kyvadla na poruchu');
% 
% %%
% %Akï¿½nï¿½ zï¿½sah
% figure;
% t_odezva = kyvadlo_odezva_porucha_akcnizasah(:,1);
% sig_odezva = kyvadlo_odezva_porucha_akcnizasah(:,2);
% plot(t_odezva, sig_odezva, 'r', 'LineWidth', 2);
% grid on;
% xlim([t_odezva(1), t_odezva(end)]);
% xlabel('Èas [s]');
% ylabel('Hodnota akèního zásahu [-]');
% 
% % return
% %%
% %Kyvadlo - odezva na poruchu s regulï¿½torem autotune
% close all;
% 
% %%
% %Odezva polohy
% figure;
% t_odezva = kyvadlo_odezva_pocpodm_PID.time;
% sig_odezva = kyvadlo_odezva_pocpodm_PID.signals.values(:,2);
% plot([t_odezva(1) t_odezva(end)], -pi/2*ones(1,2), 'g');
% hold on;
% plot(t_odezva, sig_odezva, 'b', 'LineWidth', 2);
% grid on;
% xlim([t_odezva(1), t_odezva(end)]);
% xlabel('Èas [s]');
% ylabel('Poloha kyvadla [rad]');
% legend('Referenèní poloha', 'Odezva kyvadla na poruchu');
% 
% %%
% %Akï¿½nï¿½ zï¿½sah
% figure;
% t_odezva = kyvadlo_odezva_pocpodm_PID_akcnizasah.time;
% sig_odezva = kyvadlo_odezva_pocpodm_PID_akcnizasah.signals.values(:,1);
% plot(t_odezva, sig_odezva, 'r', 'LineWidth', 2);
% grid on;
% xlim([t_odezva(1), t_odezva(end)]);
% xlabel('Èas [s]');
% ylabel('Hodnota akèního zásahu [-]');

%%
%Kyvadlo - odezva na poruchu bez regulatoru
close all;

%%
%Odezva polohy
figure;
t_odezva = kyvadlo_odezva_pocpodm(:,1);
sig_odezva = kyvadlo_odezva_pocpodm(:,3);
plot(t_odezva, sig_odezva, 'b', 'LineWidth', 2);
grid on;
xlim([t_odezva(1), t_odezva(end)]);
xlabel('Èas [s]');
ylabel('Poloha kyvadla [rad]');
legend('Odezva kyvadla na poruchu');
