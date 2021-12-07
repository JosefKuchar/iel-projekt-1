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

% Omega
om = 2*pi*f;

% Reaktance
XL1 = L1 * om;
XL2 = L2 * om;
XC1 = 1 / (C1 * om);
XC2 = 1 / (C2 * om);

% Impedance
ZL1 = 1i * XL1;
ZL2 = 1i * XL2;
ZC1 = -1i * XC1;
ZC2 = -1i * XC2;

% Vypocet soustavy rovnic
A = [ ZL1+R1+ZC2 -R1     ZC2;
      -R1         R1+ZC1 0;
      ZC2         0      ZC2+ZL2+R2 ];
B = [U1; U2; U2];
X = linsolve(A,B);

% Vypocet UL2
I3 = X(3);
UL2 = ZL2 * I3;

display("Max");
display(abs(UL2));
display("RMS");
display(abs(UL2) / sqrt(2));
display("Angle");
display(angle(UL2) * 180/pi);
