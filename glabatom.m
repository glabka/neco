% syms s c1 c2 c3 x10 X1 t
% X1 = ((c1 + c2) * x10) / (c1*s^2 + c2*s + c3);
% fce = ilaplace(X1,s,t)
% latex(fce)
% 


close all;
%%
%1. rce ze zadani (se zanedbanymi cleny)
%phim = (ku/b)/(s*((Jm+m*r^2)/b*s + 1))
%phim = (k)/(s*(T*s + 1))
cesta = strcat(pwd, '/Mereni/odezva_skok_02.mat');
load(cesta);
t = odezva_skok_02(:,1);
phim = odezva_skok_02(:,2)*kram_rad;
%phip = odezva_skok_02(:,3);

% k = 37000*kram_rad;  %Prevedeno na radiany! 37500
k = 35800*kram_rad;  %Prevedeno na radiany!
T = 0.16;

s = tf('s');
H1 = k/(s*(T*s+1));
[st, st_t] = step(0.2*H1, t(end));

asymptota = k*(t - T);

figure;
plot(t, phim, st_t, st, t, 0.2*asymptota, 'LineWidth', 2);
legend('Nam��en� hodnoty', 'Odhadovan� hodnoty', 'Asymptota');
xlim([0 3]);
xlabel('�as [s]');
ylabel('$\mathbf{\varphi_m [rad]}$', 'Interpreter', 'Latex');
title('Odhad parametr� syst�mu 2. ��du s integra�n�m charakterem');
grid on;

b = ku/k;

%%
%2. rce ze zadani (se zanedbanymi cleny)
%phip = (1/Jp)/(s^2 + 2*delta/Jp*s + m*g*l/Jp)
%phip = (k*omegan^2)/(s^2 + 2*zeta*omegan*s + omegan^2)
t = kyvadlo_poc_podm(:,1);
phim = kyvadlo_poc_podm(:,2);
phip = kyvadlo_poc_podm(:,3);

A1 = 60;
A2 = 58;
% Td = 0.725;
Td = 0.77;

mi = log(A1/A2); % log == ln
zeta = mi/sqrt(4*pi^2 + mi^2);
omegan = 2*pi/(Td * sqrt(1 - zeta^2));

A = [0 1;...
     -omegan^2 -2*zeta*omegan];
B = [0; omegan^2];
C = [1 0];
D = 0;
x0 = [A1*kkyv_rad/pi*180, 0];

[init, init_t] = initial(ss(A, B, C, D), x0);
init_t = init_t + 3.5;

figure;
plot(t, phip*kkyv_rad/pi*180, init_t, init, 'LineWidth', 2);
legend('Nam��en� hodnoty', 'Odhadovan� hodnoty');
xlim([0 41]);
xlabel('�as [s]');
ylabel('$\mathbf{\varphi_p [rad]}$', 'Interpreter', 'Latex');
title('Odhad parametr� kmtav�ho syst�mu 2. ��du');

Jp = m*g*l/(omegan^2);
delta = Jp*zeta*omegan;