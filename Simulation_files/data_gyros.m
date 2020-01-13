% Positions angulaires initiales des cardans 2 et 3 en radians
%q20 = 0;                                    %(rad)
%q30 = 0;                                    %(rad)
%Point de fonctionnement
% Vitesse de rotation de l'axe 1
%Omega = 0       ;                           %(rad/sec)
% Positions angulaires initiales des cardans 2 et 3 en radians
%q20 = 0;                                    %(rad)
%q30 = 0;                                    %(rad)
% Blocage des axes 2, 3 et 4 (0: Brake off / 1: Brake off)
frein_axe2 = 0;
frein_axe3 = 0;
frein_axe4 = 0;
% Vitesse initiale du gyroscope en rad/s
Omega1_0 = 0;
Omega2_0 = 0;



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

mu1p_0 = 0.000136408420222740736400;
Cs1p_0 = 0.031081828808676951857348;
mu1n_0 = 0.000233359294283075787492;
Cs1n_0 = -0.027383670935395872651528;

mu2p_0 = 0.00448950514709;
Cs2p_0 = 0.04719854406432;
mu2n_0 = 0.00625324727060;
Cs2n_0 = -0.01350678015598;

%initialisation des frottements nuls
mu1p = 0;
Cs1p = 0;
mu1n = 0;
Cs1n = 0;
mu2p = 0;
Cs2p = 0;
mu2n = 0;
Cs2n = 0;
mu3p = 0;
Cs3p = 0;
mu3n = 0;
Cs3n = 0;
mu4p = 0;
Cs4p = 0;
mu4n = 0;
Cs4n = 0;

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