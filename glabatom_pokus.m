if ~exist('Hlin', 'var')
    main;
end
% syms s;
% load('stav_lin.mat');
% system = Clin*((s*eye(size(Alin)) - Alin)\Blin);
% system = vpa(simplify(system));
% 
% [num_m, den_m] = numden(sym(system(1))); %_m == rameno
% b = num_m;
% a = den_m;
% poles = solve([den_m == 0], s); % vše až na jeden pól v nule je stabilní
% zeros = solve([num_m == 0], s); % jsou stabilní
%% systém pouze s zepojení proporční zpětné vazby, kde P == 1
% system = num_m/den_m;
% H = system / (1 + system);
% H = vpa(simplify(H));
% [H_num, H_den] = numden(H);
% H_poles = solve([H_den == 0], s); % stabilní
% H_zeros = solve([H_num == 0], s); % stabilní
%% Zapojení PID regulátoru
% syms Kp Ki Kd
% pid = (Kp * s + Ki + Kd * s^2)/ s;
% Lpid = pid * system;
% Hpid = Lpid / (1 + Lpid);
% Hpid = vpa(simplify(Hpid));

%% 
%potreba zpustin main
% Hlin_m = minreal(zpk(Hlin(1))); %aby sli videt nuly a poly a pak pr. Hlin_m.k a mam zesileni
% Hlin_m_p = rdf(Hlin(1));
% a = Hlin_m_p.den;
% b = Hlin_m_p.num;
% c = (s + 5 + 1j) * (s + 5 - 1j);
% [x, y] = axbyc(a,b,c,'minx');

%zpk, pzplot - dobre funkce

%% Kyvadlo - 
Hlin_p = rdf(Hlin(2));
% pzplot(minreal(Hlin(2)));
a_pol = Hlin_p.den;
b_pol = Hlin_p.num;
c_pol =  (s + 12) * (s + 5 - 10j) * (s + 5 + 10j) * (s + 20)^2;
[x, y] = axbyc(a_pol,b_pol,c_pol,'miny');
C = tf(y/x); %pokud to pujde na u_norm, vydelit 16
%něco jako lead-lag polynomialněs
C_norm = C / 16;

