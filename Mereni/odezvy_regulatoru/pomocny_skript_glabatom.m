
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
