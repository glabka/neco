%%
%Kyvadlo - odezva na poruchu s regulátorem poly
close all;

%%
%Odezva polohy
figure;
t_odezva = kyvadlo_odezva_porucha.time;
sig_odezva = kyvadlo_odezva_porucha.signals.values(:,2);
plot(t_odezva, sig_odezva, 'b', 'LineWidth', 2);
grid on;
hold on;
xlim([t_odezva(1), t_odezva(end)]);
xlabel('Èas [s]');
ylabel('Poloha kyvadla [rad]');
plot([t_odezva(1) t_odezva(end)], -pi/2*ones(2), '--', 'color', [0.1 0.1 0.1]);
legend('Odezva kyvadla na poruchu', 'Referenèní poloha');

%%
%Akèní zásah
figure;
t_odezva = kyvadlo_odezva_porucha_akcnizasah(:,1);
sig_odezva = kyvadlo_odezva_porucha_akcnizasah(:,2);
plot(t_odezva, sig_odezva, 'r', 'LineWidth', 2);
grid on;
xlim([t_odezva(1), t_odezva(end)]);
xlabel('Èas [s]');
ylabel('Hodnota akèního zásahu [-]');

%%
%Kyvadlo - odezva na poruchu s regulátorem autotune
close all;

%%
%Odezva polohy
figure;
t_odezva = kyvadlo_odezva_pocpodm_PID.time;
sig_odezva = kyvadlo_odezva_pocpodm_PID.signals.values(:,2);
plot([t_odezva(1) t_odezva(end)], -pi/2*ones(2), 'g');
hold on;
plot(t_odezva, sig_odezva, 'b', 'LineWidth', 2);
grid on;
xlim([t_odezva(1), t_odezva(end)]); 
xlabel('Èas [s]');
ylabel('Poloha kyvadla [rad]');
legend('Referenèní poloha', 'Odezva kyvadla na poruchu');

%%
%Akèní zásah
figure;
t_odezva = kyvadlo_odezva_pocpodm_PID_akcnizasah.time;
sig_odezva = kyvadlo_odezva_pocpodm_PID_akcnizasah.signals.values(:,1);
plot(t_odezva, sig_odezva, 'r', 'LineWidth', 2);
grid on;
xlim([t_odezva(1), t_odezva(end)]);
xlabel('Èas [s]');
ylabel('Hodnota akèního zásahu [-]');