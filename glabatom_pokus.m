clear;%clc;
syms s;
load('stav_lin.mat');
system = Clin*((s*eye(size(Alin)) - Alin)\Blin);
system = vpa(simplify(system));

[num_m, den_m] = numden(sym(system(1))); %_m == rameno
b = num_m;
a = den_m;
poles = solve([den_m == 0], s); % vše až na jeden pól v nule je stabilní
zeros = solve([num_m == 0], s); % jsou stabilní
%% systém pouze s zepojení proporční zpětné vazby, kde P == 1
system = num_m/den_m;
H = system / (1 + system);
H = vpa(simplify(H));
[H_num, H_den] = numden(H);
H_poles = solve([H_den == 0], s); % stabilní
H_zeros = solve([H_num == 0], s); % stabilní
%% Zapojení PID regulátoru
syms Kp Ki Kd
pid = (Kp * s + Ki + Kd * s^2)/ s;
Lpid = pid * system;
Hpid = Lpid / (1 + Lpid);
Hpid = vpa(simplify(Hpid));


