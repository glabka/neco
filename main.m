t = kyvadlo_poc_podm(:,1);
% phim = scopearray(:,2);
% plot(t, phim, 'r');
% 
% u = 0.2;
% k = 37000;
% T = 0.16;
% 
% G = tf(k, [T 1 0]);
% 
% hold on;
% step(u*G, 1)

phip = kyvadlo_poc_podm(:,3);
phip = phip-phip(end);
plot(t, phip, 'r');
legend('Pùvodní systém');

syms c1 c2 c3
t0 = 3.5;
x10 = 62;
A1 = 60;
A2 = 58;
t1 = 9;
T = 0.7;
eq1 = 2*(c1 + c2)/(sqrt(4*c1*c3-c2^2)) == 1;
omega = 2*pi/T;
eq2 = sqrt(4*c1*c2 - c2^2)/(2*c1) == omega;
%eq3 = 2*x10*sin(t1*sqrt(4*c1*c3 - c2^2)/(2*c1))*exp(-c2*t1/(2*c1))*(c1+c2)/(sqrt(4*c1*c3-c2^2)) == -36;
eq3 = -c2*T/(2*c1) == log(A1/A2);
%[c1s, c2s, c3s] = solve(eq1, eq2, eq3, c1, c2, c3);

f = x10*sin(omega*t).*exp(-0.08*t);
hold on
%plot(t+t0, f)

phip0 = 62;
A1 = 60;
A2 = 58;
Td = 0.725;
k = 0;
mi = log(A1/A2);
zeta = mi/sqrt(4*pi^2+mi^2);
omegan = 2*pi/(Td*sqrt(1-zeta^2));

H = tf(k*omegan^2, [1 2*zeta*omegan omegan^2]);
%[A, B, C, D] = tf2ss(H.num{1}, H.den{1});
A = [0 1;...
     -omegan^2 -2*zeta*omegan];
B = [0; k*omegan^2];
C = [1 0];
D = 0;


hold on;
[init, init_t] = initial(ss(A, B, C, D), [phip0, 0]);
plot(init_t+3.5, init);
legend('Pùvodní systém', 'Odhadnutý systém');


%[st, stt] = step(u*H);
%plot(stt+4, -(st-31), t, phip);