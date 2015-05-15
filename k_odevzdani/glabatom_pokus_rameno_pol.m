% load('workspace2.mat');
% s = tf('s');
% Hlin = Clin/(s*eye(length(Alin)) - Alin)*Blin + Dlin;
% Hlin = minreal(Hlin);
% 
% H_ram = rdf(Hlin(1))
% % zpk(H_kyv);
% Hk_num = H_ram.num
% Hk_den = H_ram.den
% clear s;
% 
% c = (s + 6)^7;
% 
% [x, y] = axbyc(Hk_den, Hk_num, c, 'miny');
% x
% y
% C = tf(y/x)
% save('reg_poly_ram','C');

%%
load('workspace2.mat');
s = tf('s');
Hlin = Clin/(s*eye(length(Alin)) - Alin)*Blin + Dlin;
% Hlin = minreal(Hlin);

H_ram = rdf(Hlin(1))
% zpk(H_kyv);
B = H_ram.num
A = H_ram.den
clear s;

c = (s + 6)*(s + 7)*(s + 8)*(s + 9)*(s + 4)*(s + 5.5)*(s + 8.5);

[x, y] = axbyc(A, B, c, 'miny');
x
y
C = tf(y/x)
save('reg_poly_ram','C');