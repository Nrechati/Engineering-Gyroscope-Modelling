
clear all;
close all;
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Initialisation des données physiques du modèle
gyro_data;
data_gyros
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Phase d'accelération
Choix = 3;
Omega1_c = 400;                              %(tr/min)
Theta2_c = 0;                                %(deg)
%% Vitesse Gyroscope
tr_w1 = 18;                                  %(sec)
Kv1 = 3*Jd/tr_w1;
Kiv1 = 0.005;
%% Virtual Brake
tr_q2 = 0.2;                                 %(sec)
zeta = 0.7;
%FTBF ordre2 pour zeta=0.7 tr5%*wn=3
wn = 3/tr_q2;
Kpv = 2*(Ic+Id)*wn*zeta;
Kg = 1/2*wn/zeta;

%% Bruit
VarianceMesure=.0001;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Point de fonctionnement
% Vitesse de rotation de l'axe 1
Omega = Omega1_c*2*pi/60;                   %(rad/sec)
% Positions angulaires initiales des cardans 2 et 3 en radians
q20 = 0;                                    %(rad)
q30 = 0;                                    %(rad)
% Blocage des axes 2, 3 et 4 (0: Brake off / 1: Brake off)
frein_axe2 = 0;
frein_axe3 = 0;
frein_axe4 = 1;
% Vitesse initiale du gyroscope en rad/s
Omega1_0 = Omega1_c*2*pi/60;
Omega2_0 = 0;
% Création des matrices pour le modèle d'état
state_model_data;
% Modélisations des Frottements
mu1p = mu1p_0;
Cs1p = Cs1p_0;
mu1n = mu1n_0;
Cs1n = Cs1n_0;
mu2p = mu2p_0;
Cs2p = Cs2p_0;
mu2n = mu2n_0;
Cs2n = Cs2n_0;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Expérience3
% Controle en position de l'axe 3 à l'aide du moteur 1
Fixed_Step = 0.001;
Theta3_c = 5;                               %(deg)
Periode_Theta3 = 2/Fixed_Step;
Largeur_Theta3 = 1/Fixed_Step;
frequence_sin_q3=2;%
consigne_sin_q3=5; %deg

%% Parametrer les gains Kp et Kd
%Kp=+;
%Kd=+;
%%

t0=0.001;
tsim =20;

%sim('exp3_model_PI');
 sim('model_axe3_BF')
% Transformations des variables en counts
% Sim_consq3_cnt = Sim_consq3_deg*16000/360;
% Sim_q3_cnt     = Sim_q3_deg*16000/360;
% 
figure(101)
subplot(2,1,1)
plot(Sim_temps_sec,Sim_consq3_deg,'g',Sim_temps_sec,Sim_q3_deg,'r')
ylabel('Position \theta_3 en deg')
legend('Consigne \theta_3 en deg','Simulation \theta_3 en deg',4)
title('Commande en position \theta_3')
grid on
subplot(2,1,2)
plot(Sim_temps_sec,Sim_T1_Volt,'b')
ylabel('Commande T1 en Volt')
xlabel('Temps en secondes')
grid on

% figure(102)
% plot(Sim_temps_sec,Sim_w1_trpmin)
% ylabel('Vitesse moteur axe 1')
% xlabel('Temps en secondes')
% grid on
% 
% figure(103)
% plot(Sim_temps_sec,Sim_consq3_deg,'g',Sim_temps_sec,Sim_q3_deg,'r')
% ylabel('Position \theta_3 en deg')
% legend('Consigne \theta_3 en deg','Simulation \theta_3 en deg',4)
% title('Commande en position \theta_3')
% grid on
