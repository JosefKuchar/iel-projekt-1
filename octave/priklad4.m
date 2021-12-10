output_precision(6);

% Zadani
U1 = 3;
U2 = 4;
R1 = 10;
R2 = 13;
L1 = 220 * 10^-3;
L2 = 70 * 10^-3;
C1 = 230 * 10^-6;
C2 = 85 * 10^-6;
f = 75;

% U1 = 3;
% U2 = 5;
% R1 = 12;
% R2 = 14;
% L1 = 120 * 10^-3;
% L2 = 100 * 10^-3;
% C1 = 200 * 10^-6;
% C2 = 105 * 10^-6;
% f = 70;

% U1 = 2;
% U2 = 4;
% R1 = 11;
% R2 = 15;
% L1 = 100 * 10^-3;
% L2 = 85 * 10^-3;
% C1 = 220 * 10^-6;
% C2 = 95 * 10^-6;
% f = 80;


% Omega
om = 2*pi*f;

% Reaktance
XL1 = L1 * om;
XL2 = L2 * om;
XC1 = 1 / (C1 * om);
XC2 = 1 / (C2 * om);

% Impedance
ZL1 = 1j * XL1;
ZL2 = 1j * XL2;
ZC1 = -1j * XC1;
ZC2 = -1j * XC2;

display(ZL2);

% Vypocet soustavy rovnic
A = [ ZL1+R1+ZC2 -R1     ZC2;
      -R1         R1+ZC1 0;
      ZC2         0      ZC2+ZL2+R2 ];
B = [U1; U2; U2];
X = linsolve(A,B);

display(A);
display(B);
display(X);

% Vypocet UL2
I3 = X(3);
UL2 = ZL2 * I3;
display(ZL2);
display(I3);
display(UL2);

display("Max");
display(abs(UL2));
display("RMS");
display(abs(UL2) / sqrt(2));
display("Angle");
display(angle(UL2) * 180/pi);
