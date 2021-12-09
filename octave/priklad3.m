output_precision(6);

% Zadani
U = 160;
I1 = 0.65;
I2 = 0.45;
R1 = 46;
R2 = 41;
R3 = 53;
R4 = 33;
R5 = 29;

% Prepocet na vodivosti
G1 = 1 / R1
G2 = 1 / R2
G3 = 1 / R3
G4 = 1 / R4
G5 = 1 / R5

% Prepocet napetoveho zdroje na proudovy
Iz = U / R5;

% Vypocet soustavy rovnic
A = [ -G1-G4-G5   G4+G5     0;
       G4+G5     -G3-G4-G5  G3;
       0          G3       -G3-G2 ];
B = [-I1 - Iz; Iz - I2; I2];
X = linsolve(A,B);
UB = X(2);
UC = X(3);
display(A);
display(B);
display(X);

UR3 = UB - UC;
IR3 = UR3 * G3;
display(UR3);
display(IR3);
