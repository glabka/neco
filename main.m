%%
%Definice konstant a promennych
syms k1 k2 k3 phim phip phimd phipd M kmot delta b Jm Jp m r l g;

%Substituovane konstanty
k1 = (Jm + m*r^2);
k2 = (m*l*r);
k3 = (m*g*l);

%%
%Stavovy popis
%Definice stavu
x1 = phim;
x2 = phip;
x3 = phimd;
x4 = phipd;
xs = [x1; x2; x3; x4];

u1 = M;
us = u1;

%Stavove rovnice
x1d = x3;
x2d = x4;
x3d = (-Jp*k2*cos(x2)*x4^2 + 2*delta*k2*sin(x2)*x4 - Jp*M + Jp*b*x3 + k2*k3*cos(x2)*sin(x2))/(-Jp*k1 + k2^2*sin(x2));
x4d = (2*delta*x4 + k3*cos(x2) - k2^2/k1*sin(x2)*cos(x2)*x4 - k2/k1*sin(x2)*M + k2*b/k1*sin(x2)*x3)/(-Jp+k2^2/k1*sin(x2)^2);
xds = [x1d x2d x3d x4d];

y1 = x1;
y2 = x2;
ys = [y1 y2];

%%
%Linearizace
%Jakobiany stavovych rovnic
Alin = jacobian(xds, xs);
Blin = jacobian(xds, u1);
Clin = jacobian(ys, xs);
Dlin = jacobian(ys, u1);

%Pracovni bod
x1p = 0;
x2p = -pi/2;
x3p = 0;
x4p = 0;
up1 = 0;
y1p = 0;
y2p = -pi/2;
%[x1p, x2p, x3p, x4p, up1, params, conds] = solve([x1d == 0, x2d == 0, x3d == 0, x4d == 0, y1 == y1p, y2 == y2p], [x1, x2, x3, x4, u1], 'ReturnConditions', true);
%[y1p, y2p, up1, params, conds] = solve([x1d == 0, x2d == 0, x3d == 0, x4d == 0, y1 == y1p, y2 == y2p], [x1, x2, x3, x4, u1], 'ReturnConditions', true);
xps = [x1p x2p x3p x4p];
ups = up1;
yps = [y1p y2p];


%Zadane parametry
m = 0.175;
g = 9.81;
l = 0.17;
r = 0.2;

%Zjistene parametry
%zatim nic :(

%Dosazeni pracovniho bodu
Alin = subs(Alin, xs, xps);
Blin = subs(Blin, us, ups);
Clin = subs(Clin, xs, xps);
Dlin = subs(Dlin, us, ups);