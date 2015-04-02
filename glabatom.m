% syms s c1 c2 c3 x10 X1 t
% X1 = ((c1 + c2) * x10) / (c1*s^2 + c2*s + c3);
% fce = ilaplace(X1,s,t)
% latex(fce)
% 

%2. rce
A1 = 60;
A2 = 58;
Td = 0.7;

mi = log(A1/A2); % log == ln
zeta = mi/sqrt(4*pi^2 + mi^2);
omega_n = 2*pi/(Td * sqrt(1 - zeta^2));