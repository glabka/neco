%%
load('potreba_pro_kompilaci.mat');
%Definice konstant a promennych
% setup_vars
syms k1 k2 k3 phim phip phimd phipd M kmot delta b Jm Jp m r l g u;


%Substituovane konstanty
% k1 = (Jm + m*r^2);
k2 = (m*l*r);
k3 = (m*g*l);

%%
%Stavovy popis
%Definice stavu
% syms x1 x2 x3 x4;
x1 = phim;
x2 = phip;
x3 = phimd;
x4 = phipd;
xs = [x1; x2; x3; x4];

% M = kmot*u;
u1 = M;
us = u1;

%Stavove rovnice
x1d = x3;
x2d = x4;
x3d = (-Jp*k2*cos(x2)*x4^2 + 2*delta*k2*sin(x2)*x4 - Jp*M + Jp*b*x3 + k2*k3*cos(x2)*sin(x2))/(-Jp*k1 + k2^2*sin(x2)^2);
x4d = (2*delta*x4 + k3*cos(x2) - k2^2/k1*sin(x2)*cos(x2)*x4^2 - k2/k1*sin(x2)*M + k2*b/k1*sin(x2)*x3)/(-Jp+k2^2/k1*sin(x2)^2);
xds = [x1d; x2d; x3d; x4d];

y1 = x1;
y2 = x2;
ys = [y1; y2];

%%
%Linearizace
%Jakobiany stavovych rovnic
Alin = jacobian(xds, xs);
Blin = jacobian(xds, M);
Clin = jacobian(ys, xs);
Dlin = jacobian(ys, u);

%Pracovni bod - Nahoře!!!
x1p = 0;
x2p = pi/2;
x3p = 0;
x4p = 0;
up1 = 0;
y1p = 0;
y2p = -pi/2;
M = up1;
%[x1p, x2p, x3p, x4p, up1, params, conds] = solve([x1d == 0, x2d == 0, x3d == 0, x4d == 0, y1 == y1p, y2 == y2p], [x1, x2, x3, x4, u1], 'ReturnConditions', true);
%[y1p, y2p, up1, params, conds] = solve([x1d == 0, x2d == 0, x3d == 0, x4d == 0, y1 == y1p, y2 == y2p], [x1, x2, x3, x4, u1], 'ReturnConditions', true);
xps = [x1p; x2p; x3p; x4p];
ups = up1;
yps = [y1p; y2p];


%Zadane parametry
m = 0.175;
g = 9.81;
l = 0.17;
r = 0.2;

%Zjistene parametry (i sdruzene)
% sdr1 = kmot/b == 3700;
%ku = 12680000;
ku = 16;
kram_rad = 2*pi/7300;
kkyv_rad = -2*pi/2000;
glabatom;
close all;
%b = 1/3700/kram_rad;
k1 = T*b;
k2 = eval(k2);
k3 = eval(k3);
% sdr2 = (Jm+m*r^2)/b == 0.16;


%Dosazeni pracovniho bodu
Alin = subs(Alin, xs, xps);
Blin = subs(Blin, xs, xps);
Clin = subs(Clin, xs, xps);
Dlin = subs(Dlin, us, ups);

Alin = eval(Alin);
Blin = eval(Blin);
%Tohle je potreba ve starym MATLABu zakomentit
Clin = eval(Clin);
Dlin = eval(Dlin);

s = tf('s');
Hlin = Clin/(s*eye(length(Alin)) - Alin)*Blin + Dlin;

x0 = [x1p; x2p; x3p; x4p];


%% Návrh stavové zpětné vazby
state = ss(Alin, Blin, Clin, Dlin);
Htomas=tf(state);
% pzplot(Htomas);
% póly jsou přibližně -10, -6, 0, 7
% póly chceme př jako: -10, -6, -6, -6
P = [-10, -6, -6, -6];
K = acker(Alin, Blin,P);
eig(Alin)

%% Návrh stavové zpětné vazby s integrátorem
Cszv = [0,1,0,0];
Dszv = [0];
[rows, columns] = size(Alin);
Abig = [Alin, zeros(rows, 1);...
        -Cszv, 0 ];
Bbig = [Blin;...
        0];
Cbig = [Cszv, 0];
state2 = ss(Abig, Bbig, Cbig, Dszv);
Htomas2=tf(state2);
% pzplot(Htomas2);
K2 = acker(Abig, Bbig, [-0.01, -0.01, -0.0001, -0.0001, -0.01])
eig(Abig)



