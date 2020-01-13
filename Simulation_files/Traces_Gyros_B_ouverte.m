clear all;
close all;
clc;


% Initialisation des données physiques du modèle
 gyro_data;
 
 frein_axe2 = 0;
 frein_axe3 = 0;
 frein_axe4 = 0;
 q20 = -pi/2;
 q30 = -pi/2;


% Vitesse de rotation de l'axe 1
Omega = 0; 

% Vitesse initiale du gyroscope en rad/s
Omega0 = 0;

% Création des matrices pour le modèle d'état
state_model_data;



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Simulation et Tracés %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Lancement de la simulation
sim('modele_gyro_B_ouverte')
figure(1)
plot(Temps,Y(:,1),Temps,Y(:,5),'r')
legend('Position angulaire \theta_1 (rad)','Vitesse angulaire \omega_1 (rad/s)')
grid on
title('Theta1 et Omega1 en fonction du temps')
figure(2)
plot(Temps,Y(:,2),Temps,Y(:,6),'r')
legend('Position angulaire \theta_2 (rad)','Vitesse angulaire \omega_2 (rad/s)')
grid on
title('Theta2 et Omega2 en fonction du temps')
figure(3)

plot(Temps,Y(:,3),Temps,Y(:,7),'r')
legend('Position angulaire \theta_3 (rad)','Vitesse angulaire \omega_3 (rad/s)')
grid on
title('Theta3 et Omega3 en fonction du temps')
figure(4)
plot(Temps,Y(:,4),Temps,Y(:,8),'r')
legend('Position angulaire \theta_4 (rad)','Vitesse angulaire \omega_4 (rad/s)')
grid on
title('Theta4 et Omega4 en fonction du temps')