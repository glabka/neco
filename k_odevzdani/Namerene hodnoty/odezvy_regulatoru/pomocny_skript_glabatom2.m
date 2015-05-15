%% Rameno odezva a porucha P - 2pi
% load('rameno_odezva_2pi_P.mat');
% rameno_odezva_2pi_P_time = rameno_odezva_2pi.time';
% rameno_odezva_2pi_P_values = rameno_odezva_2pi.signals.values';
% rameno_odezva_2pi_P_values = rameno_odezva_2pi_P_values(1,:);
% 
% reference = 1*ones(size(rameno_odezva_2pi_P_time));
% reference(1,1) = 0;
% plot(rameno_odezva_2pi_P_time, reference, 'color','green','Linewidth', 2);
% hold on
% plot(rameno_odezva_2pi_P_time, rameno_odezva_2pi_P_values, 'color', 'blue', 'Linewidth', 2);
% upper_bound = 1.2 * ones(size(rameno_odezva_2pi_P_time));
% plot(rameno_odezva_2pi_P_time, upper_bound, '--', 'color', [0.1 0.1 0.1]);
% grid on;
% axis([0, 5, 0, 1.3]);
% box on;
% 
% xlabel('čas [s]');
% ylabel('Poloha ramene [rad]');
% legend('Referenční hodnota','Odezva ramene', 'Hranice 20% překmitu', 'Location', 'SouthEast');

% print -depsc /home/glab/Dropbox/4.semestr/ARI/Laboratorní_úloha/neco/Latex/Řízení/rameno_odezva_na1_P.eps

%% Rameno odezva a porucha P_akcni zasah - 2pi
% load('rameno_odezva_2pi_P_akcnizasah.mat');
% rameno_odezva_2pi_P_akcnizasah_time2 = rameno_akcnizasah_P_2pi.time';
% rameno_odezva_2pi_P_akcnizasah_values2 = rameno_akcnizasah_P_2pi.signals.values';
% rameno_odezva_2pi_P_akcnizasah_values2 = rameno_odezva_2pi_P_akcnizasah_values2(1,:);
% 
% figure('name','rameno_odezva_a_porucha_leadlagmozna2_akcnizasah')
% hold on
% plot(rameno_odezva_2pi_P_akcnizasah_time2, rameno_odezva_2pi_P_akcnizasah_values2, 'color', 'red', 'Linewidth', 2);
% grid on
% axis([0, 5, -0.4, 1.14]);
% box on;
% 
% xlabel('čas [s]');
% ylabel('Hodnota akčního zásahu [-]');
% legend('Průběh akčního zásahu','Location', 'SouthEast');

% print -depsc /home/glab/Dropbox/4.semestr/ARI/Laboratorní_úloha/neco/Latex/Řízení/rameno_odezva_na1_P_akcnizasah.eps



%% nedali jsme tam nakonec - Rameno odezva a porucha leadlagmozna
% není to leadlag, ale obecný regulátor druhého řádu navržený rltoolem
% load('rameno_odezva_a_porucha_leadlagmozna.mat');
% rameno_odezva_a_porucha_leadlagmozna_time = scopearray(:,1)';
% rameno_odezva_a_porucha_leadlagmozna_values = scopearray(:,2)';
% 
% reference = -1*ones(size(rameno_odezva_a_porucha_leadlagmozna_time));
% reference(1,1) = 0;
% figure('name','rameno_odezva_a_porucha_leadlagmozna');
% plot(rameno_odezva_a_porucha_leadlagmozna_time, reference, 'color','green','Linewidth', 2);
% hold on
% plot(rameno_odezva_a_porucha_leadlagmozna_time, rameno_odezva_a_porucha_leadlagmozna_values, 'color', 'blue', 'Linewidth', 2);
% upper_bound = -1.2 * ones(size(rameno_odezva_a_porucha_leadlagmozna_time));
% plot(rameno_odezva_a_porucha_leadlagmozna_time, upper_bound, '--', 'color', [0.1 0.1 0.1]);
% grid on;
% % axis([0, 10, 0, 13]);
% 
% xlabel('čas [s]');
% ylabel('Poloha ramene [rad]');
% legend('Referenční hodnota','Odezva ramene', 'Hranice 20% překmitu', 'Location', 'SouthEast');

% print -depsc /home/glab/Dropbox/4.semestr/ARI/Laboratorní_úloha/neco/Latex/Řízení/rameno_odezva_a_porucha_leadlagmozna_-1.eps

%% Rameno odezva a porucha leadlagmozna2 
% není to leadlag, ale obecný regulátor druhého řádu navržený rltoolem
% load('rameno_odezva_a_porucha_leadlagmozna2.mat');
% rameno_odezva_a_porucha_leadlagmozna_time2 = scopearray(:,1)';
% rameno_odezva_a_porucha_leadlagmozna_values2 = scopearray(:,2)';
% 
% reference = -1*ones(size(rameno_odezva_a_porucha_leadlagmozna_time2));
% reference(1,1) = 0;
% figure('name','rameno_odezva_a_porucha_leadlagmozna2')
% plot(rameno_odezva_a_porucha_leadlagmozna_time2, reference, 'color','green','Linewidth', 2);
% hold on
% plot(rameno_odezva_a_porucha_leadlagmozna_time2, rameno_odezva_a_porucha_leadlagmozna_values2, 'color', 'blue', 'Linewidth', 2);
% upper_bound = -1.2 * ones(size(rameno_odezva_a_porucha_leadlagmozna_time2));
% plot(rameno_odezva_a_porucha_leadlagmozna_time2, upper_bound, '--', 'color', [0.1 0.1 0.1]);
% grid on;
% axis([0, 13, -2, 0]);
% box on;
% 
% xlabel('čas [s]');
% ylabel('Poloha ramene [rad]');
% legend('Referenční hodnota','Odezva ramene', 'Hranice 20% překmitu', 'Location', 'SouthEast');

% print -depsc /home/glab/Dropbox/4.semestr/ARI/Laboratorní_úloha/neco/Latex/Řízení/rameno_odezva_a_porucha_leadlagmozna2_-1.eps


%% Rameno odezva a porucha leadlagmozna2_akcnizasah
% není to leadlag, ale obecný regulátor druhého řádu navržený rltoolem
% load('rameno_odezva_a_porucha_leadlagmozna2_akcnizasah.mat');
% rameno_odezva_a_porucha_leadlagmozna2_akcnizasah_time2 = scopearray1(:,1)';
% rameno_odezva_a_porucha_leadlagmozna2_akcnizasah_values2 = scopearray1(:,2)';
% 
% figure('name','rameno_odezva_a_porucha_leadlagmozna2_akcnizasah')
% hold on
% plot(rameno_odezva_a_porucha_leadlagmozna2_akcnizasah_time2, rameno_odezva_a_porucha_leadlagmozna2_akcnizasah_values2, 'color', 'red', 'Linewidth', 2);
% grid on
% axis([0, 13, -0.15, 0.15]);
% box on;
% 
% % xlabel('čas [s]');
% ylabel('Hodnota akčního zásahu [-]');
% legend('Průběh akčního zásahu','Location', 'SouthEast');
% 
% print -depsc /home/glab/Dropbox/4.semestr/ARI/Laboratorní_úloha/neco/Latex/Řízení/rameno_odezva_a_porucha_leadlagmozna2_akcnizasah-1.eps
