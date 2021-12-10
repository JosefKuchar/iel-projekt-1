output_precision(8);

% Zadani
U1 = 100;
U2 = 80;
R1 = 450;
R2 = 810;
R3 = 190;
R4 = 220;
R5 = 220;
R6 = 720;
R7 = 260;
R8 = 180;

% Postupne zjednodusovani
U = U1 + U2
R45 = (R4 * R5) / (R4 + R5)
R457 = R45 + R7

% Transfigurace trojuhelnik -> hvezdu
RA = (R1 * R2) / (R1 + R2 + R3)
RB = (R1 * R3) / (R1 + R2 + R3)
RC = (R2 * R3) / (R1 + R2 + R3)

RB457 = RB + R457
RC6 = RC + R6
RBC4567 = (RB457 * RC6) / (RB457 + RC6)

% Vysledny Rekv
Rekv = RA + RBC4567 + R8

% Vypocet celkoveho proudu v obvodu
I = U / Rekv

% Zpetne dopocitani proudu a napeti na R7
UBC4567 = RBC4567 * I
IB457 = UBC4567 / RB457
IR7 = IB457
UR7 = R7 * IR7

% Zobrazeni vysledku
display(IR7);
display(UR7);
