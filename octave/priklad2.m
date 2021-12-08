output_precision(6);

% Zadani
U = 200;
R1 = 70;
R2 = 220;
R3 = 630;
R4 = 240;
R5 = 450;

% Vypocet Ri
R45 = R4 + R5;
R345 = (R3 * R45) / (R3 + R45);
Ri = (R2 * R345) / (R2 + R345);

% Vypocet Ui
Rekv = R345 + R2;
Ix = U / Rekv;
Ui = R2 * Ix;

% Vypocet pozadovanych velicin
IR1 = Ui / (Ri + R1);
UR1 = R1 * IR1;

% Zobrazeni vysledku
display(IR1)
display(UR1);
