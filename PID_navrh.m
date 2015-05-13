poly=C.p{1};
nuly=C.z{1};
zesi=C.k;

syms s P I D N;
digits(3);
num=(k*(s-nuly(1))*(s-nuly(2)));
den=((s-poly(1))*(s-poly(2)));
% vpa(num)
% vpa(den)

num_obecne=(N*D+P)*s^2 + (N*P+I)*s + N*I;
den_obecne=s*(s+N);

[Psol, Isol, Dsol, Nsol] = solve([coeffs(num_obecne,s)==coeffs(num,s), coeffs(den_obecne,s)==coeffs(den,s)], [P I D N]);
vpa(Psol)
vpa(Isol)
vpa(Dsol)
vpa(Nsol)