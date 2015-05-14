<<<<<<< HEAD
%% Proporční regulátor
% load('rameno_odezva_10_P.mat');
% reference = 10*ones(size(rameno_10_P_time));
% reference(1,1) = 0;
% plot(rameno_10_P_time, reference, 'color','green','Linewidth', 2);
% hold on
% rameno_10_P_time = rameno_odezva_10.time';
% rameno_10_P_values = rameno_odezva_10.signals.values';
% rameno_10_P_values = rameno_10_P_values(1,:);
% plot(rameno_10_P_time, rameno_10_P_values, 'color', 'blue', 'Linewidth', 2);
% upper_bound = 12 * ones(size(rameno_10_P_time));
% plot(rameno_10_P_time, upper_bound, '--', 'color', [0.1 0.1 0.1]);
% grid on;
% axis([0, 10, 0, 13]);
% 
% xlabel('čas [s]');
% ylabel('Poloha ramene [rad]');
% legend('Referenční hodnota','Odezva ramene', 'Hranice 20% překmitu', 'Location', 'SouthEast');

% print -depsc /home/glab/Dropbox/4.semestr/ARI/Laboratorní_úloha/neco/Latex/Řízení/rameno_odezva_10_P.eps



%%
% load('rameno_odezva_10_P_akcnizasah.mat');
% rameno_10_P_time = scopearray1(:,1)';
% rameno_10_P_values = scopearray1(:,2)';
% figure
% plot(rameno_10_P_time, rameno_10_P_values, 'color', 'red', 'Linewidth', 2);
% % hold on
% % upper_bound = 12 * ones(size(rameno_10_P_time));
% % plot(rameno_10_P_time, upper_bound, '--', 'color', [0.1 0.1 0.1]);
% grid on;
% axis([0, 10, -0.5, 2]);
% 
% xlabel('čas [s]');
% ylabel('Hodnota akčního zásahu');
% % legend('Poloha ramene', 'Hranice 20% překmitu', 'Location', 'SouthEast');
% 
% print -depsc /home/glab/Dropbox/4.semestr/ARI/Laboratorní_úloha/neco/Latex/Řízení/rameno_odezva_10_P_akcnizasah.eps



%% Regulátor druhého řádu - rltool
% odezva na pi
% load('rameno_odezva_pi_rltool.mat');
% rameno_odezva_pi_rltool_time = rameno_odezva_pi.time';
% rameno_odezva_pi_rltool_values = rameno_odezva_pi.signals.values';
% rameno_odezva_pi_rltool_values = rameno_odezva_pi_rltool_values(1,:);
% 
% reference = pi*ones(size(rameno_odezva_pi_rltool_time));
% reference(1,1) = 0;
% figure
% plot(rameno_odezva_pi_rltool_time, reference, 'color','green','Linewidth', 2);
% hold on
% plot(rameno_odezva_pi_rltool_time, rameno_odezva_pi_rltool_values, 'color', 'red', 'Linewidth', 2);
% hold on
% upper_bound = pi*1.2*ones(size(rameno_odezva_pi_rltool_time));
% plot(rameno_odezva_pi_rltool_time, upper_bound, '--', 'color', [0.1 0.1 0.1]);
% grid on;
% % axis([0, 10, -0.5, 2]);
% 
% xlabel('čas [s]');
% ylabel('Hodnota akčního zásahu');
% % legend('Poloha ramene', 'Hranice 20% překmitu', 'Location', 'SouthEast');
% 
% % print -depsc /home/glab/Dropbox/4.semestr/ARI/Laboratorní_úloha/neco/Latex/Řízení/rameno_odezva_pi_rltool.eps

%% odezva na pi - akční zásah
% load('rameno_odezva_pi_rltool_akcnizasah.mat');
% rameno_akcnizasah_rltool_pi_time = rameno_akcnizasah_rltool_pi.time';
% rameno_akcnizasah_rltool_pi_values = rameno_akcnizasah_rltool_pi.signals.values';
% 
% figure
% plot(rameno_akcnizasah_rltool_pi_time, rameno_akcnizasah_rltool_pi_values, 'color', 'red', 'Linewidth', 2);
% hold on
% grid on;
% % % axis([0, 10, -0.5, 2]);
% % 
% xlabel('čas [s]');
% ylabel('Hodnota akčního zásahu');

% % legend('Poloha ramene', 'Hranice 20% překmitu', 'Location', 'SouthEast');
% 
% % print -depsc /home/glab/Dropbox/4.semestr/ARI/Laboratorní_úloha/neco/Latex/Řízení/rameno_odezva_pi_rltool_akcni.eps

%%
% odezva na -1
% load('rameno_odezva_minus1_rlool.mat');
% rameno_odezva_minus1_rltool_time = rameno_odezva_minus1.time';
% rameno_odezva_minus1_rltool_values = rameno_odezva_minus1.signals.values';
% rameno_odezva_minus1_rltool_values = rameno_odezva_minus1_rltool_values(1,:);
% 
% reference = -1*ones(size(rameno_odezva_minus1_rltool_time));
% reference(1,1) = 0;
% figure
% plot(rameno_odezva_minus1_rltool_time, reference, 'color','green','Linewidth', 2);
% hold on
% plot(rameno_odezva_minus1_rltool_time, rameno_odezva_minus1_rltool_values, 'color', 'red', 'Linewidth', 2);
% hold on
% upper_bound = -1*1.2*ones(size(rameno_odezva_minus1_rltool_time));
% plot(rameno_odezva_minus1_rltool_time, upper_bound, '--', 'color', [0.1 0.1 0.1]);
% grid on;
% % axis([0, 10, -0.5, 2]);
% 
% xlabel('čas [s]');
% ylabel('Hodnota akčního zásahu');
% legend('Poloha ramene', 'Hranice 20% překmitu', 'Location', 'SouthEast');

% print -depsc /home/glab/Dropbox/4.semestr/ARI/Laboratorní_úloha/neco/Latex/Řízení/rameno_odezva_minus1_rltool.eps

%% odezva na -1 - akční zásah
% load('rameno_odezva_minus1_rlool_akcnizasah.mat');
% rameno_odezva_minus1_rlool_akcnizasah_time = scopearray1(:,1)';
% rameno_odezva_minus1_rlool_akcnizasah_values = scopearray1(:,2)';
% 
% figure
% plot(rameno_odezva_minus1_rlool_akcnizasah_time, rameno_odezva_minus1_rlool_akcnizasah_values, 'color', 'red', 'Linewidth', 2);
% hold on
% grid on;
% % % axis([0, 10, -0.5, 2]);
% % 
% xlabel('čas [s]');
% ylabel('Hodnota akčního zásahu');

% % legend('Poloha ramene', 'Hranice 20% překmitu', 'Location', 'SouthEast');
% 
% % print -depsc /home/glab/Dropbox/4.semestr/ARI/Laboratorní_úloha/neco/Latex/Řízení/rameno_odezva_pi_rltool_akcni.eps
=======

load('rameno_odezva_10_P.mat');
reference = 10*ones(size(rameno_10_P_time));
reference(1,1) = 0;
plot(rameno_10_P_time, reference, 'color','green','Linewidth', 2);
hold on
rameno_10_P_time = rameno_odezva_10.time';
rameno_10_P_values = rameno_odezva_10.signals.values';
rameno_10_P_values = rameno_10_P_values(1,:);
plot(rameno_10_P_time, rameno_10_P_values, 'color', 'blue', 'Linewidth', 2);
upper_bound = 12 * ones(size(rameno_10_P_time));
plot(rameno_10_P_time, upper_bound, '--', 'color', [0.1 0.1 0.1]);
grid on;
axis([0, 10, 0, 13]);

xlabel('čas [s]');
ylabel('Poloha ramene [rad]');
legend('Referenční hodnota','Odezva ramene', 'Hranice 20% překmitu', 'Location', 'SouthEast');

% print -depsc /home/glab/Dropbox/4.semestr/ARI/Laboratorní_úloha/neco/Latex/Řízení/rameno_odezva_10_P.eps

%%
% load('rameno_odezva_10_P_akcnizasah.mat');
% rameno_10_P_time = scopearray1(:,1)';
% rameno_10_P_values = scopearray1(:,2)';
% figure
% plot(rameno_10_P_time, rameno_10_P_values, 'color', 'red', 'Linewidth', 2);
% % hold on
% % upper_bound = 12 * ones(size(rameno_10_P_time));
% % plot(rameno_10_P_time, upper_bound, '--', 'color', [0.1 0.1 0.1]);
% grid on;
% axis([0, 10, -0.5, 2]);
% 
% xlabel('čas [s]');
% ylabel('Hodnota akčního zásahu');
% % legend('Poloha ramene', 'Hranice 20% překmitu', 'Location', 'SouthEast');
% 
% print -depsc /home/glab/Dropbox/4.semestr/ARI/Laboratorní_úloha/neco/Latex/Řízení/rameno_odezva_10_P_akcnizasah.eps
>>>>>>> 868f48ec5268fabb1530a6ac398fcdf4e2be3df8
