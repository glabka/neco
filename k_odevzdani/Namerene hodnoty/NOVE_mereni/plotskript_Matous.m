%% Rameno odezva a porucha leadlagmozna2 rltool 2pi
% % není to leadlag, ale obecný regulátor druhého řádu navržený rltoolem

%% Odezva

load('rameno_odezva_a_porucha_leadlagmozna.mat');
time_y = scopearray(:,1);
signal_y = scopearray(:,2);

figure('name','rameno_odezva_a_porucha_leadlagmozna2')
hold on
plot([0,0, time_y(end)], [0, -1,-1], 'g');
plot([0, time_y(end)], [-1.2, -1.2], '--', 'color', [0.1 0.1 0.1]);
plot(time_y, signal_y, 'color', 'blue', 'Linewidth', 2);
grid on
xlim([0, time_y(end)]);
box on;
xlabel('čas [s]');
ylabel('Poloha ramene [rad]');
legend('Referenční hodnota','Hranice 20% překmitu','Průběh odezvy ramene','Location', 'SouthEast');

% print -depsc /home/glab/Dropbox/4.semestr/ARI/Laboratorní_úloha/neco/Latex/Řízení/dobre_grafy/rameno_odezva_a_porucha_leadlagmozna.eps
%% Akcni zasah
load('rameno_odezva_a_porucha_leadlagmozna_akcnizasah.mat');
time_u = scopearray1(:,1);
signal_u = scopearray1(:,2);

figure('name','rameno_odezva_a_porucha_leadlagmozna2_akcnizasah')
hold on
plot(time_u, signal_u, 'color', 'red', 'Linewidth', 2);
grid on
xlim([0, time_u(end)]);
box on;
xlabel('čas [s]');
ylabel('Hodnota akčního zásahu [-]');
legend('Průběh akčního zásahu','Location', 'SouthEast');

% print -depsc /home/glab/Dropbox/4.semestr/ARI/Laboratorní_úloha/neco/Latex/Řízení/dobre_grafy/rameno_odezva_a_porucha_leadlagmozna_akcnizasah.eps