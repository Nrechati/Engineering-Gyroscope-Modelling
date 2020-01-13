
clear all;
close all;
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Initialisation des données physiques du modèle
gyro_data;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Virtual Brake
Theta2_c = 0;                                %(deg)
tr_q2 = 0.1;                                 %(sec)
zeta = 0.7;
%FTBF ordre2 pour zeta=0.7 tr5%*wn=3
wn = 3/tr_q2;
Kpv = 2*(Ic+Id)*wn*zeta;
Kg = 1/2*wn/zeta;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Expérience0
% Commande Axe 1,2,3 ou 4 en Vitesse
Omega1_c = 500;                              %(tr/min)
Omega2_c = 10;                               %(tr/min)
Omega3_c = 70;                               %(tr/min)
Omega4_c = 20;                               %(tr/min)
% Réglage de la boucle de correction en vitesse w1
                                %(sec)
%% Synthétiser un  correcteur proportionnel pour chaque axe.
    %%Kv1 = 


% Réglage de la boucle de correction en vitesse w2
tr_w2 = 0.2;                                 %(sec)
Kv2=(Ic+Id)*3/tr_w2;
% Réglage de la boucle de correction en vitesse w3
tr_w3 = 2 ;                                  %(sec)
Kv3 = -3*(Jb+Jc)/tr_w3;
% Réglage de la boucle de correction en vitesse w4
tr_w4 = 2 ;                                  %(sec)
Kv4 = -3*(Kb+Jc+Ka)/tr_w4;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Point de fonctionnement
% Vitesse de rotation de l'axe 1
Omega = 0   ;                            %(rad/sec)
% Positions angulaires initiales des cardans 2 et 3 en radians
q20 = 0;                                    %(rad)
q30 = 0;                                    %(rad)
% Blocage des axes 2, 3 et 4 (0: Brake off / 1: Brake off)
frein_axe2 = 0;
frein_axe3 = 0;
frein_axe4 = 0;
% Vitesse initiale du gyroscope en rad/s
Omega1_0 = 0;
Omega2_0 = 0;
% Création des matrices pour le modèle d'état
state_model_data;


%% Paramètre de la simulation
Fixed_Step = 0.01;
%%%Choix : 1:aucune / 2:w1 / 3:w2 / 4:w3 / 5:w4 (avec q20=pi/2)%%%
%%% Aucun axe n'est actionné
Choix=2;
t_sim=20;
sim('modele_gyros1');
plot(Temps,omega1_mesuree,Temps,consigne_w1_trpmin,'r');
legend('Vitesse angulaire \omega_1','Consigne en vitesse angulaire \omega_1')
grid on
title('Réponse indicielle \omega_1');
axis([0 t_sim 0 550]);
figure;
plot(Temps,Sim_T1_Volt,Temps,Sim_T2_Volt,'r');
legend('Tension du moteur T_1','Tension du moteur T_2')
grid on
title('Entrée de commande \omega_1');
Choix=3;
t_sim=.5;
sim('modele_gyros1');
figure;
plot(Temps,omega2_mesuree,Temps,consigne_w2_trpmin,'r');
legend('Vitesse angulaire \omega_2','Consigne en vitesse angulaire \omega_2')
grid on
title('Réponse indicielle \omega_2');
%axis([0 t_sim 0 50]);
figure;
plot(Temps,Sim_T1_Volt,Temps,Sim_T2_Volt,'r');
legend('Tension du moteur T_1','Tension du moteur T_2')
grid on
title('Entrée de commande \omega_2');


Choix=4;
t_sim=3;
sim('modele_gyros1');
figure;
plot(Temps,omega3_mesuree,Temps,consigne_w3_trpmin,'r');
legend('Vitesse angulaire \omega_3','Consigne en vitesse angulaire \omega_3')
grid on
title('Réponse indicielle \omega_3');
% axis([0 t_sim 0 550]);
figure;
plot(Temps,Sim_T1_Volt,Temps,Sim_T2_Volt,'r');
legend('Tension du moteur T_1','Tension du moteur T_2')
grid on
title('Entrée de commande \omega_3');


Choix=5;
t_sim=20
q20=pi/2;
state_model_data;
sim('modele_gyros1');
figure;
plot(Temps,omega4_mesuree,Temps,consigne_w4_trpmin,'r');
legend('Vitesse angulaire \omega_4','Consigne en vitesse angulaire \omega_4')
grid on
title('Réponse indicielle \omega_4');
% axis([0 t_sim 0 550]);
figure;
plot(Temps,Sim_T1_Volt,Temps,Sim_T2_Volt,'r');
legend('Tension du moteur T_1','Tension du moteur T_2')
grid on
title('Entrée de commande \omega_4');
