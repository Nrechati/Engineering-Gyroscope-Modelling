

% Constantes de couple des moteurs 1 et 2 en N.m/A
Km1 = 0.175;
Km2 = 0.732;

% Gain Ampli en A/V
Kamp = 0.4;

% Limite et Seuil pour la commande des moteurs en V
seuil_ampli = 3.5;
limite_ampli = 3.25;

% Vitesse angulaire maximale du gyroscope en rad/s (axe 1 = 800RPM)
OmegaMax = 2*pi*800/60;

% Coefficients de frottement visqueux des axes
mu1 = 0;
mu2 = 0;
mu3 = 0;
mu4 = 0;

% Gains Capteurs en points/radian
K1 = 6667/(2*pi);
K2 = 24400/(2*pi);
K3 = 16000/(2*pi);
K4 = 16000/(2*pi);

% Quantification des capteurs
Q = 1;

% Inerties des différents solides en kg.m²
Ib = 0.0119;
Ic = 0.0092;
Id = 0.0148;

Jb = 0.0178;
Jc = 0.023;
Jd = 0.0273;

Ka = 0.067;
Kb = 0.0297;
Kc = 0.0188;