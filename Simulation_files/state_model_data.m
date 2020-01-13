% Vecteur d'état X = '[q1 q2 q3 q4 w1 w2 w3 w4]
% Vecteur de commande U = [T1 T2 T3 T4]
% Coefficients des matrices d'état
% Positions angulaires initiales des cardans 2 et 3 en radians
q20 = 0;                                    %(rad)
q30 = 0;     
Omega = 0  ; 
% Axe 1
A56 = -(cos(q20)*Jd^2*Omega*sin(q20)*Ka+cos(q20)*Jd^2*Omega*sin(q20)*Ib-cos(q20)*Jd^2*Omega*sin(q20)*Ib*cos(q30)^2-sin(q20)*Jd^2*Jb*Omega*cos(q20)*cos(q30)^2+cos(q20)*Jd^2*Omega*sin(q20)*Kb*cos(q30)^2)/(Kc*Ka+Id*Ka+Id*Ib+Kc*Ib+Jb*Ka+Jb*Ib-Id*Ib*cos(q30)^2-Kc*Ib*cos(q30)^2-Jb*Ib*cos(q30)^2-Id*Ka*cos(q20)^2+Jb*Jc*cos(q30)^2+Id*Kb*cos(q30)^2+Kc*Kb*cos(q30)^2+Jc*Ib*cos(q20)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Jc*Ka*cos(q20)^2-Id*Ib*cos(q20)^2-Kc*Ib*cos(q20)^2-Jb*Jc*cos(q30)^2*cos(q20)^2-Id*Kb*cos(q30)^2*cos(q20)^2-Kc*Kb*cos(q30)^2*cos(q20)^2-Jc*Ib*cos(q30)^2*cos(q20)^2+Id*Ib*cos(q30)^2*cos(q20)^2+Kc*Ib*cos(q30)^2*cos(q20)^2+Jc*Kb*cos(q30)^2*cos(q20)^2+Jb*Kc*cos(q30)^2*cos(q20)^2+Jb*Id*cos(q30)^2*cos(q20)^2+Jc*Id*cos(q30)^2)/Jd;
A58 = -(-cos(q20)*Jd^2*sin(q30)*Omega*sin(q20)*Ka-cos(q20)*Jd^2*sin(q30)*Omega*sin(q20)*Kb*cos(q30)^2-cos(q20)*Jd^2*sin(q30)*Omega*sin(q20)*Ib+cos(q20)*Jd^2*sin(q30)*Omega*sin(q20)*Ib*cos(q30)^2+sin(q20)*Jd^2*Jb*sin(q30)*Omega*cos(q20)*cos(q30)^2)/(Kc*Ka+Id*Ka+Id*Ib+Kc*Ib+Jb*Ka+Jb*Ib-Id*Ib*cos(q30)^2-Kc*Ib*cos(q30)^2-Jb*Ib*cos(q30)^2-Id*Ka*cos(q20)^2+Jb*Jc*cos(q30)^2+Id*Kb*cos(q30)^2+Kc*Kb*cos(q30)^2+Jc*Ib*cos(q20)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Jc*Ka*cos(q20)^2-Id*Ib*cos(q20)^2-Kc*Ib*cos(q20)^2-Jb*Jc*cos(q30)^2*cos(q20)^2-Id*Kb*cos(q30)^2*cos(q20)^2-Kc*Kb*cos(q30)^2*cos(q20)^2-Jc*Ib*cos(q30)^2*cos(q20)^2+Id*Ib*cos(q30)^2*cos(q20)^2+Kc*Ib*cos(q30)^2*cos(q20)^2+Jc*Kb*cos(q30)^2*cos(q20)^2+Jb*Kc*cos(q30)^2*cos(q20)^2+Jb*Id*cos(q30)^2*cos(q20)^2+Jc*Id*cos(q30)^2)/Jd;
B51 = (Jb*Ib+Jb*Ka+Jd*Ka*cos(q20)^2+Jd*Jb*cos(q30)^2+Jd*Ib*cos(q20)^2+Jd*Kc*cos(q30)^2+Jd*Id*cos(q30)^2+Jc*Id*cos(q30)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Kc*Ib*cos(q20)^2*cos(q30)^2+Jc*Kb*cos(q20)^2*cos(q30)^2+Jb*Kc*cos(q20)^2*cos(q30)^2-Id*Kb*cos(q20)^2*cos(q30)^2+Jb*Id*cos(q20)^2*cos(q30)^2-Jb*Jc*cos(q20)^2*cos(q30)^2-Kc*Kb*cos(q20)^2*cos(q30)^2-Jc*Ib*cos(q20)^2*cos(q30)^2+Id*Ib*cos(q20)^2*cos(q30)^2-Jd*Jb*cos(q20)^2*cos(q30)^2+Jd*Kb*cos(q20)^2*cos(q30)^2-Jd*Ib*cos(q20)^2*cos(q30)^2+Id*Ib+Kc*Ka+Id*Ka+Kc*Ib-Kc*Ib*cos(q20)^2+Jc*Ka*cos(q20)^2-Id*Ka*cos(q20)^2-Jb*Ib*cos(q30)^2-Id*Ib*cos(q20)^2+Id*Kb*cos(q30)^2+Jb*Jc*cos(q30)^2+Kc*Kb*cos(q30)^2-Kc*Ib*cos(q30)^2+Jc*Ib*cos(q20)^2-Id*Ib*cos(q30)^2)/(Jb*Ib+Jb*Ka+Jc*Id*cos(q30)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Kc*Ib*cos(q20)^2*cos(q30)^2+Jc*Kb*cos(q20)^2*cos(q30)^2+Jb*Kc*cos(q20)^2*cos(q30)^2-Id*Kb*cos(q20)^2*cos(q30)^2+Jb*Id*cos(q20)^2*cos(q30)^2-Jb*Jc*cos(q20)^2*cos(q30)^2-Kc*Kb*cos(q20)^2*cos(q30)^2-Jc*Ib*cos(q20)^2*cos(q30)^2+Id*Ib*cos(q20)^2*cos(q30)^2+Id*Ib+Kc*Ka+Id*Ka+Kc*Ib-Kc*Ib*cos(q20)^2+Jc*Ka*cos(q20)^2-Id*Ka*cos(q20)^2-Jb*Ib*cos(q30)^2-Id*Ib*cos(q20)^2+Id*Kb*cos(q30)^2+Jb*Jc*cos(q30)^2+Kc*Kb*cos(q30)^2-Kc*Ib*cos(q30)^2+Jc*Ib*cos(q20)^2-Id*Ib*cos(q30)^2)/Jd;
B52 = -sin(q20)*cos(q30)*sin(q30)*(Jb+Kc+Id)/(Jb*Ib+Jb*Ka+Jc*Id*cos(q30)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Kc*Ib*cos(q20)^2*cos(q30)^2+Jc*Kb*cos(q20)^2*cos(q30)^2+Jb*Kc*cos(q20)^2*cos(q30)^2-Id*Kb*cos(q20)^2*cos(q30)^2+Jb*Id*cos(q20)^2*cos(q30)^2-Jb*Jc*cos(q20)^2*cos(q30)^2-Kc*Kb*cos(q20)^2*cos(q30)^2-Jc*Ib*cos(q20)^2*cos(q30)^2+Id*Ib*cos(q20)^2*cos(q30)^2+Id*Ib+Kc*Ka+Id*Ka+Kc*Ib-Kc*Ib*cos(q20)^2+Jc*Ka*cos(q20)^2-Id*Ka*cos(q20)^2-Jb*Ib*cos(q30)^2-Id*Ib*cos(q20)^2+Id*Kb*cos(q30)^2+Jb*Jc*cos(q30)^2+Kc*Kb*cos(q30)^2-Kc*Ib*cos(q30)^2+Jc*Ib*cos(q20)^2-Id*Ib*cos(q30)^2);
B53 = -cos(q20)*(Ib+Id*cos(q30)^2+Ka+Kc*cos(q30)^2+Kb*cos(q30)^2-Ib*cos(q30)^2)/(Jb*Ib+Jb*Ka+Jc*Id*cos(q30)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Kc*Ib*cos(q20)^2*cos(q30)^2+Jc*Kb*cos(q20)^2*cos(q30)^2+Jb*Kc*cos(q20)^2*cos(q30)^2-Id*Kb*cos(q20)^2*cos(q30)^2+Jb*Id*cos(q20)^2*cos(q30)^2-Jb*Jc*cos(q20)^2*cos(q30)^2-Kc*Kb*cos(q20)^2*cos(q30)^2-Jc*Ib*cos(q20)^2*cos(q30)^2+Id*Ib*cos(q20)^2*cos(q30)^2+Id*Ib+Kc*Ka+Id*Ka+Kc*Ib-Kc*Ib*cos(q20)^2+Jc*Ka*cos(q20)^2-Id*Ka*cos(q20)^2-Jb*Ib*cos(q30)^2-Id*Ib*cos(q20)^2+Id*Kb*cos(q30)^2+Jb*Jc*cos(q30)^2+Kc*Kb*cos(q30)^2-Kc*Ib*cos(q30)^2+Jc*Ib*cos(q20)^2-Id*Ib*cos(q30)^2);
B54 = -sin(q20)*cos(q30)*(Jb+Kc+Id)/(Jb*Ib+Jb*Ka+Jc*Id*cos(q30)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Kc*Ib*cos(q20)^2*cos(q30)^2+Jc*Kb*cos(q20)^2*cos(q30)^2+Jb*Kc*cos(q20)^2*cos(q30)^2-Id*Kb*cos(q20)^2*cos(q30)^2+Jb*Id*cos(q20)^2*cos(q30)^2-Jb*Jc*cos(q20)^2*cos(q30)^2-Kc*Kb*cos(q20)^2*cos(q30)^2-Jc*Ib*cos(q20)^2*cos(q30)^2+Id*Ib*cos(q20)^2*cos(q30)^2+Id*Ib+Kc*Ka+Id*Ka+Kc*Ib-Kc*Ib*cos(q20)^2+Jc*Ka*cos(q20)^2-Id*Ka*cos(q20)^2-Jb*Ib*cos(q30)^2-Id*Ib*cos(q20)^2+Id*Kb*cos(q30)^2+Jb*Jc*cos(q30)^2+Kc*Kb*cos(q30)^2-Kc*Ib*cos(q30)^2+Jc*Ib*cos(q20)^2-Id*Ib*cos(q30)^2);

% Axe 2
A66 = -(sin(q30)*Ic*Jb*Omega*cos(q20)*cos(q30)*Jd+sin(q30)*Ic*Jc*Omega*cos(q20)*cos(q30)*Jd+sin(q30)*Id*Jb*Omega*cos(q20)*cos(q30)*Jd+sin(q30)*Id*Jc*Omega*cos(q20)*cos(q30)*Jd)/(Kc*Ka+Id*Ka+Id*Ib+Kc*Ib+Jb*Ka+Jb*Ib-Id*Ib*cos(q30)^2-Kc*Ib*cos(q30)^2-Jb*Ib*cos(q30)^2-Id*Ka*cos(q20)^2+Jb*Jc*cos(q30)^2+Id*Kb*cos(q30)^2+Kc*Kb*cos(q30)^2+Jc*Ib*cos(q20)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Jc*Ka*cos(q20)^2-Id*Ib*cos(q20)^2-Kc*Ib*cos(q20)^2-Jb*Jc*cos(q30)^2*cos(q20)^2-Id*Kb*cos(q30)^2*cos(q20)^2-Kc*Kb*cos(q30)^2*cos(q20)^2-Jc*Ib*cos(q30)^2*cos(q20)^2+Id*Ib*cos(q30)^2*cos(q20)^2+Kc*Ib*cos(q30)^2*cos(q20)^2+Jc*Kb*cos(q30)^2*cos(q20)^2+Jb*Kc*cos(q30)^2*cos(q20)^2+Jb*Id*cos(q30)^2*cos(q20)^2+Jc*Id*cos(q30)^2)/(Ic+Id);
A67 = -(Omega*sin(q20)*Jd*Jb*Kb*cos(q30)^2+Omega*sin(q20)*Jd*Jb*Ib-Omega*sin(q20)*Jd*Jb*Ib*cos(q30)^2+Omega*sin(q20)*Jd*Jb*Ka+Omega*sin(q20)*Jd*Jc*Kb*cos(q20)^2*cos(q30)^2+Omega*sin(q20)*Jd*Jc*Id*cos(q30)^2+Omega*sin(q20)*Jd*Jb*Jc*cos(q30)^2+Omega*sin(q20)*Jd*Jc*Ka*cos(q20)^2-Omega*sin(q20)*Jd*Id*Ka*cos(q20)^2+Omega*sin(q20)*Jd*Kc*Ka-Omega*sin(q20)*Jd*Kc*Ka*cos(q20)^2-Omega*sin(q20)*Jd*Jb*Jc*cos(q20)^2*cos(q30)^2+Omega*sin(q20)*Jd*Id*Ka-Omega*sin(q20)*Jd*Kc*Ib*cos(q30)^2-Omega*sin(q20)*Jd*Kc*Ib*cos(q20)^2-Omega*sin(q20)*Jd*Id*Ib*cos(q30)^2-Omega*sin(q20)*Jd*Id*Ib*cos(q20)^2+Omega*sin(q20)*Jd*Kc*Ib*cos(q20)^2*cos(q30)^2+Omega*sin(q20)*Jd*Jb*Kc*cos(q20)^2*cos(q30)^2+Omega*sin(q20)*Jd*Kc*Kb*cos(q30)^2+Omega*sin(q20)*Jd*Jb*Id*cos(q20)^2*cos(q30)^2+Omega*sin(q20)*Jd*Id*Ib*cos(q20)^2*cos(q30)^2+Omega*sin(q20)*Jd*Kc*Ib+Omega*sin(q20)*Jd*Jc*Kc*cos(q30)^2-Omega*sin(q20)*Jd*Jc*Ib*cos(q20)^2*cos(q30)^2+Omega*sin(q20)*Jd*Id*Ib+Omega*sin(q20)*Jd*Id*Kb*cos(q30)^2-Omega*sin(q20)*Jd*Id*Kb*cos(q20)^2*cos(q30)^2-Omega*sin(q20)*Jd*Kc*Kb*cos(q20)^2*cos(q30)^2+Omega*sin(q20)*Jd*Jc*Ib*cos(q20)^2)/(Kc*Ka+Id*Ka+Id*Ib+Kc*Ib+Jb*Ka+Jb*Ib-Id*Ib*cos(q30)^2-Kc*Ib*cos(q30)^2-Jb*Ib*cos(q30)^2-Id*Ka*cos(q20)^2+Jb*Jc*cos(q30)^2+Id*Kb*cos(q30)^2+Kc*Kb*cos(q30)^2+Jc*Ib*cos(q20)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Jc*Ka*cos(q20)^2-Id*Ib*cos(q20)^2-Kc*Ib*cos(q20)^2-Jb*Jc*cos(q30)^2*cos(q20)^2-Id*Kb*cos(q30)^2*cos(q20)^2-Kc*Kb*cos(q30)^2*cos(q20)^2-Jc*Ib*cos(q30)^2*cos(q20)^2+Id*Ib*cos(q30)^2*cos(q20)^2+Kc*Ib*cos(q30)^2*cos(q20)^2+Jc*Kb*cos(q30)^2*cos(q20)^2+Jb*Kc*cos(q30)^2*cos(q20)^2+Jb*Id*cos(q30)^2*cos(q20)^2+Jc*Id*cos(q30)^2)/(Ic+Id);
A68 = -(Ic*Jb*Omega*cos(q20)*cos(q30)^3*Jd+Omega*cos(q20)^3*cos(q30)^3*Jd*Id*Kb+Ic*Jc*Omega*cos(q20)*cos(q30)^3*Jd-Ic*Jc*Omega*cos(q20)*cos(q30)*Jd-Omega*cos(q20)^3*cos(q30)^3*Jd*Jc*Kb-Ic*Jb*Omega*cos(q20)*cos(q30)*Jd+Omega*cos(q20)*cos(q30)^3*Jd*Jb*Ib-Omega*cos(q20)*cos(q30)*Jd*Jb*Ka-Omega*cos(q20)*cos(q30)*Jd*Jb*Id-Omega*cos(q20)*cos(q30)*Jd*Jc*Id-Omega*cos(q20)^3*cos(q30)^3*Jd*Jb*Id+Omega*cos(q20)*cos(q30)^3*Jd*Jb*Id-Omega*cos(q20)*cos(q30)*Jd*Id*Ka-Omega*cos(q20)*cos(q30)*Jd*Kc*Ka-Omega*cos(q20)^3*cos(q30)*Jd*Jc*Ib-Omega*cos(q20)*cos(q30)^3*Jd*Jc*Kc-Omega*cos(q20)*cos(q30)^3*Jd*Kc*Kb+Omega*cos(q20)^3*cos(q30)^3*Jd*Kc*Kb-Omega*cos(q20)*cos(q30)^3*Jd*Jb*Jc-Omega*cos(q20)*cos(q30)^3*Jd*Id*Kb-Omega*cos(q20)*cos(q30)*Jd*Kc*Ib+Omega*cos(q20)^3*cos(q30)^3*Jd*Jb*Jc-Omega*cos(q20)*cos(q30)*Jd*Id*Ib+Omega*cos(q20)*cos(q30)^3*Jd*Id*Ib+Omega*cos(q20)^3*cos(q30)*Jd*Id*Ib-Omega*cos(q20)^3*cos(q30)^3*Jd*Id*Ib-Omega*cos(q20)^3*cos(q30)^3*Jd*Jb*Kc-Omega*cos(q20)*cos(q30)^3*Jd*Jb*Kb-Omega*cos(q20)^3*cos(q30)*Jd*Jc*Ka+Omega*cos(q20)*cos(q30)^3*Jd*Kc*Ib+Omega*cos(q20)^3*cos(q30)^3*Jd*Jc*Ib+Omega*cos(q20)^3*cos(q30)*Jd*Id*Ka+Omega*cos(q20)^3*cos(q30)*Jd*Kc*Ib-Omega*cos(q20)^3*cos(q30)^3*Jd*Kc*Ib+Omega*cos(q20)^3*cos(q30)*Jd*Kc*Ka-Omega*cos(q20)*cos(q30)*Jd*Jb*Ib)/(Kc*Ka+Id*Ka+Id*Ib+Kc*Ib+Jb*Ka+Jb*Ib-Id*Ib*cos(q30)^2-Kc*Ib*cos(q30)^2-Jb*Ib*cos(q30)^2-Id*Ka*cos(q20)^2+Jb*Jc*cos(q30)^2+Id*Kb*cos(q30)^2+Kc*Kb*cos(q30)^2+Jc*Ib*cos(q20)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Jc*Ka*cos(q20)^2-Id*Ib*cos(q20)^2-Kc*Ib*cos(q20)^2-Jb*Jc*cos(q30)^2*cos(q20)^2-Id*Kb*cos(q30)^2*cos(q20)^2-Kc*Kb*cos(q30)^2*cos(q20)^2-Jc*Ib*cos(q30)^2*cos(q20)^2+Id*Ib*cos(q30)^2*cos(q20)^2+Kc*Ib*cos(q30)^2*cos(q20)^2+Jc*Kb*cos(q30)^2*cos(q20)^2+Jb*Kc*cos(q30)^2*cos(q20)^2+Jb*Id*cos(q30)^2*cos(q20)^2+Jc*Id*cos(q30)^2)/(Ic+Id);
B61 = -sin(q20)*cos(q30)*sin(q30)*(Jb+Kc+Id)/(Jb*Ib+Jb*Ka+Jc*Id*cos(q30)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Kc*Ib*cos(q20)^2*cos(q30)^2+Jc*Kb*cos(q20)^2*cos(q30)^2+Jb*Kc*cos(q20)^2*cos(q30)^2-Id*Kb*cos(q20)^2*cos(q30)^2+Jb*Id*cos(q20)^2*cos(q30)^2-Jb*Jc*cos(q20)^2*cos(q30)^2-Kc*Kb*cos(q20)^2*cos(q30)^2-Jc*Ib*cos(q20)^2*cos(q30)^2+Id*Ib*cos(q20)^2*cos(q30)^2+Id*Ib+Kc*Ka+Id*Ka+Kc*Ib-Kc*Ib*cos(q20)^2+Jc*Ka*cos(q20)^2-Id*Ka*cos(q20)^2-Jb*Ib*cos(q30)^2-Id*Ib*cos(q20)^2+Id*Kb*cos(q30)^2+Jb*Jc*cos(q30)^2+Kc*Kb*cos(q30)^2-Kc*Ib*cos(q30)^2+Jc*Ib*cos(q20)^2-Id*Ib*cos(q30)^2);
B62 = (Jb*Ib+Jb*Id+Jb*Ka+Id^2+Ic*Id+Ic*Kc+Id*Kc-Id^2*cos(q20)^2-Id^2*cos(q30)^2+Jc*Id*cos(q30)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Kc*Ib*cos(q20)^2*cos(q30)^2+Jc*Kb*cos(q20)^2*cos(q30)^2+Jb*Kc*cos(q20)^2*cos(q30)^2-Id*Kb*cos(q20)^2*cos(q30)^2+Jb*Id*cos(q20)^2*cos(q30)^2-Jb*Jc*cos(q20)^2*cos(q30)^2-Kc*Kb*cos(q20)^2*cos(q30)^2-Jc*Ib*cos(q20)^2*cos(q30)^2+Id*Ib*cos(q20)^2*cos(q30)^2-Ic*Jc*cos(q30)^2*cos(q20)^2+Ic*Kc*cos(q30)^2*cos(q20)^2+Ic*Id*cos(q30)^2*cos(q20)^2+Id*Kc*cos(q30)^2*cos(q20)^2+Ic*Jc*cos(q20)^2+Jc*Id*cos(q20)^2-Jc*Id*cos(q30)^2*cos(q20)^2+Id^2*cos(q30)^2*cos(q20)^2-Ic*Kc*cos(q20)^2-Ic*Kc*cos(q30)^2-Ic*Id*cos(q20)^2-Ic*Id*cos(q30)^2-Id*Kc*cos(q30)^2-Id*Kc*cos(q20)^2+Id*Ib+Kc*Ka+Id*Ka+Kc*Ib-Kc*Ib*cos(q20)^2+Jc*Ka*cos(q20)^2-Id*Ka*cos(q20)^2-Jb*Ib*cos(q30)^2-Id*Ib*cos(q20)^2+Id*Kb*cos(q30)^2+Jb*Jc*cos(q30)^2+Kc*Kb*cos(q30)^2-Kc*Ib*cos(q30)^2+Jc*Ib*cos(q20)^2-Id*Ib*cos(q30)^2+Ic*Jb-Jb*Id*cos(q30)^2-Ic*Jb*cos(q30)^2)/(Jb*Ib+Jb*Ka+Jc*Id*cos(q30)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Kc*Ib*cos(q20)^2*cos(q30)^2+Jc*Kb*cos(q20)^2*cos(q30)^2+Jb*Kc*cos(q20)^2*cos(q30)^2-Id*Kb*cos(q20)^2*cos(q30)^2+Jb*Id*cos(q20)^2*cos(q30)^2-Jb*Jc*cos(q20)^2*cos(q30)^2-Kc*Kb*cos(q20)^2*cos(q30)^2-Jc*Ib*cos(q20)^2*cos(q30)^2+Id*Ib*cos(q20)^2*cos(q30)^2+Id*Ib+Kc*Ka+Id*Ka+Kc*Ib-Kc*Ib*cos(q20)^2+Jc*Ka*cos(q20)^2-Id*Ka*cos(q20)^2-Jb*Ib*cos(q30)^2-Id*Ib*cos(q20)^2+Id*Kb*cos(q30)^2+Jb*Jc*cos(q30)^2+Kc*Kb*cos(q30)^2-Kc*Ib*cos(q30)^2+Jc*Ib*cos(q20)^2-Id*Ib*cos(q30)^2)/(Ic+Id);
B63 = (-Jc+Id+Kc)*sin(q30)*sin(q20)*cos(q20)*cos(q30)/(Jb*Ib+Jb*Ka+Jc*Id*cos(q30)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Kc*Ib*cos(q20)^2*cos(q30)^2+Jc*Kb*cos(q20)^2*cos(q30)^2+Jb*Kc*cos(q20)^2*cos(q30)^2-Id*Kb*cos(q20)^2*cos(q30)^2+Jb*Id*cos(q20)^2*cos(q30)^2-Jb*Jc*cos(q20)^2*cos(q30)^2-Kc*Kb*cos(q20)^2*cos(q30)^2-Jc*Ib*cos(q20)^2*cos(q30)^2+Id*Ib*cos(q20)^2*cos(q30)^2+Id*Ib+Kc*Ka+Id*Ka+Kc*Ib-Kc*Ib*cos(q20)^2+Jc*Ka*cos(q20)^2-Id*Ka*cos(q20)^2-Jb*Ib*cos(q30)^2-Id*Ib*cos(q20)^2+Id*Kb*cos(q30)^2+Jb*Jc*cos(q30)^2+Kc*Kb*cos(q30)^2-Kc*Ib*cos(q30)^2+Jc*Ib*cos(q20)^2-Id*Ib*cos(q30)^2);
B64 = -(-Jb+Kc*cos(q20)^2-cos(q20)^2*Jc-Id-Kc+Id*cos(q20)^2)*sin(q30)/(Jb*Ib+Jb*Ka+Jc*Id*cos(q30)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Kc*Ib*cos(q20)^2*cos(q30)^2+Jc*Kb*cos(q20)^2*cos(q30)^2+Jb*Kc*cos(q20)^2*cos(q30)^2-Id*Kb*cos(q20)^2*cos(q30)^2+Jb*Id*cos(q20)^2*cos(q30)^2-Jb*Jc*cos(q20)^2*cos(q30)^2-Kc*Kb*cos(q20)^2*cos(q30)^2-Jc*Ib*cos(q20)^2*cos(q30)^2+Id*Ib*cos(q20)^2*cos(q30)^2+Id*Ib+Kc*Ka+Id*Ka+Kc*Ib-Kc*Ib*cos(q20)^2+Jc*Ka*cos(q20)^2-Id*Ka*cos(q20)^2-Jb*Ib*cos(q30)^2-Id*Ib*cos(q20)^2+Id*Kb*cos(q30)^2+Jb*Jc*cos(q30)^2+Kc*Kb*cos(q30)^2-Kc*Ib*cos(q30)^2+Jc*Ib*cos(q20)^2-Id*Ib*cos(q30)^2);

% Axe 3
A76 = -(-Omega*Jd*sin(q20)*Ka+Omega*Jd*sin(q20)*Ib*cos(q30)^2-Omega*Jd*sin(q20)*Ib-Omega*Jd*sin(q20)*Kb*cos(q30)^2-Omega*Jd*Jc*sin(q20)*cos(q30)^2)/(Kc*Ka+Id*Ka+Id*Ib+Kc*Ib+Jb*Ka+Jb*Ib-Id*Ib*cos(q30)^2-Kc*Ib*cos(q30)^2-Jb*Ib*cos(q30)^2-Id*Ka*cos(q20)^2+Jb*Jc*cos(q30)^2+Id*Kb*cos(q30)^2+Kc*Kb*cos(q30)^2+Jc*Ib*cos(q20)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Jc*Ka*cos(q20)^2-Id*Ib*cos(q20)^2-Kc*Ib*cos(q20)^2-Jb*Jc*cos(q30)^2*cos(q20)^2-Id*Kb*cos(q30)^2*cos(q20)^2-Kc*Kb*cos(q30)^2*cos(q20)^2-Jc*Ib*cos(q30)^2*cos(q20)^2+Id*Ib*cos(q30)^2*cos(q20)^2+Kc*Ib*cos(q30)^2*cos(q20)^2+Jc*Kb*cos(q30)^2*cos(q20)^2+Jb*Kc*cos(q30)^2*cos(q20)^2+Jb*Id*cos(q30)^2*cos(q20)^2+Jc*Id*cos(q30)^2);
A78 = -(sin(q30)*Omega*Jd*sin(q20)*Ka+sin(q30)*Omega*Jd*sin(q20)*Kb*cos(q30)^2+sin(q30)*Omega*Jd*Jc*sin(q20)*cos(q30)^2-sin(q30)*Omega*Jd*sin(q20)*Ib*cos(q30)^2+sin(q30)*Omega*Jd*sin(q20)*Ib)/(Kc*Ka+Id*Ka+Id*Ib+Kc*Ib+Jb*Ka+Jb*Ib-Id*Ib*cos(q30)^2-Kc*Ib*cos(q30)^2-Jb*Ib*cos(q30)^2-Id*Ka*cos(q20)^2+Jb*Jc*cos(q30)^2+Id*Kb*cos(q30)^2+Kc*Kb*cos(q30)^2+Jc*Ib*cos(q20)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Jc*Ka*cos(q20)^2-Id*Ib*cos(q20)^2-Kc*Ib*cos(q20)^2-Jb*Jc*cos(q30)^2*cos(q20)^2-Id*Kb*cos(q30)^2*cos(q20)^2-Kc*Kb*cos(q30)^2*cos(q20)^2-Jc*Ib*cos(q30)^2*cos(q20)^2+Id*Ib*cos(q30)^2*cos(q20)^2+Kc*Ib*cos(q30)^2*cos(q20)^2+Jc*Kb*cos(q30)^2*cos(q20)^2+Jb*Kc*cos(q30)^2*cos(q20)^2+Jb*Id*cos(q30)^2*cos(q20)^2+Jc*Id*cos(q30)^2);
B71 = -cos(q20)*(Ib+Id*cos(q30)^2+Ka+Kc*cos(q30)^2+Kb*cos(q30)^2-Ib*cos(q30)^2)/(Jb*Ib+Jb*Ka+Jc*Id*cos(q30)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Kc*Ib*cos(q20)^2*cos(q30)^2+Jc*Kb*cos(q20)^2*cos(q30)^2+Jb*Kc*cos(q20)^2*cos(q30)^2-Id*Kb*cos(q20)^2*cos(q30)^2+Jb*Id*cos(q20)^2*cos(q30)^2-Jb*Jc*cos(q20)^2*cos(q30)^2-Kc*Kb*cos(q20)^2*cos(q30)^2-Jc*Ib*cos(q20)^2*cos(q30)^2+Id*Ib*cos(q20)^2*cos(q30)^2+Id*Ib+Kc*Ka+Id*Ka+Kc*Ib-Kc*Ib*cos(q20)^2+Jc*Ka*cos(q20)^2-Id*Ka*cos(q20)^2-Jb*Ib*cos(q30)^2-Id*Ib*cos(q20)^2+Id*Kb*cos(q30)^2+Jb*Jc*cos(q30)^2+Kc*Kb*cos(q30)^2-Kc*Ib*cos(q30)^2+Jc*Ib*cos(q20)^2-Id*Ib*cos(q30)^2);
B72 = (-Jc+Id+Kc)*sin(q30)*sin(q20)*cos(q20)*cos(q30)/(Jb*Ib+Jb*Ka+Jc*Id*cos(q30)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Kc*Ib*cos(q20)^2*cos(q30)^2+Jc*Kb*cos(q20)^2*cos(q30)^2+Jb*Kc*cos(q20)^2*cos(q30)^2-Id*Kb*cos(q20)^2*cos(q30)^2+Jb*Id*cos(q20)^2*cos(q30)^2-Jb*Jc*cos(q20)^2*cos(q30)^2-Kc*Kb*cos(q20)^2*cos(q30)^2-Jc*Ib*cos(q20)^2*cos(q30)^2+Id*Ib*cos(q20)^2*cos(q30)^2+Id*Ib+Kc*Ka+Id*Ka+Kc*Ib-Kc*Ib*cos(q20)^2+Jc*Ka*cos(q20)^2-Id*Ka*cos(q20)^2-Jb*Ib*cos(q30)^2-Id*Ib*cos(q20)^2+Id*Kb*cos(q30)^2+Jb*Jc*cos(q30)^2+Kc*Kb*cos(q30)^2-Kc*Ib*cos(q30)^2+Jc*Ib*cos(q20)^2-Id*Ib*cos(q30)^2);
B73 = (Jc*cos(q30)^2+Ib+Kb*cos(q30)^2-Ib*cos(q30)^2+Kc*cos(q20)^2*cos(q30)^2-Jc*cos(q20)^2*cos(q30)^2+Id*cos(q20)^2*cos(q30)^2+Ka)/(Jb*Ib+Jb*Ka+Jc*Id*cos(q30)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Kc*Ib*cos(q20)^2*cos(q30)^2+Jc*Kb*cos(q20)^2*cos(q30)^2+Jb*Kc*cos(q20)^2*cos(q30)^2-Id*Kb*cos(q20)^2*cos(q30)^2+Jb*Id*cos(q20)^2*cos(q30)^2-Jb*Jc*cos(q20)^2*cos(q30)^2-Kc*Kb*cos(q20)^2*cos(q30)^2-Jc*Ib*cos(q20)^2*cos(q30)^2+Id*Ib*cos(q20)^2*cos(q30)^2+Id*Ib+Kc*Ka+Id*Ka+Kc*Ib-Kc*Ib*cos(q20)^2+Jc*Ka*cos(q20)^2-Id*Ka*cos(q20)^2-Jb*Ib*cos(q30)^2-Id*Ib*cos(q20)^2+Id*Kb*cos(q30)^2+Jb*Jc*cos(q30)^2+Kc*Kb*cos(q30)^2-Kc*Ib*cos(q30)^2+Jc*Ib*cos(q20)^2-Id*Ib*cos(q30)^2);
B74 = sin(q20)*cos(q20)*cos(q30)*(-Jc+Id+Kc)/(Jb*Ib+Jb*Ka+Jc*Id*cos(q30)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Kc*Ib*cos(q20)^2*cos(q30)^2+Jc*Kb*cos(q20)^2*cos(q30)^2+Jb*Kc*cos(q20)^2*cos(q30)^2-Id*Kb*cos(q20)^2*cos(q30)^2+Jb*Id*cos(q20)^2*cos(q30)^2-Jb*Jc*cos(q20)^2*cos(q30)^2-Kc*Kb*cos(q20)^2*cos(q30)^2-Jc*Ib*cos(q20)^2*cos(q30)^2+Id*Ib*cos(q20)^2*cos(q30)^2+Id*Ib+Kc*Ka+Id*Ka+Kc*Ib-Kc*Ib*cos(q20)^2+Jc*Ka*cos(q20)^2-Id*Ka*cos(q20)^2-Jb*Ib*cos(q30)^2-Id*Ib*cos(q20)^2+Id*Kb*cos(q30)^2+Jb*Jc*cos(q30)^2+Kc*Kb*cos(q30)^2-Kc*Ib*cos(q30)^2+Jc*Ib*cos(q20)^2-Id*Ib*cos(q30)^2);

% Axe 4
A86 = (-cos(q30)*cos(q20)*Jc*Omega*Jd-cos(q30)*cos(q20)*Jb*Omega*Jd)/(Kc*Ka+Id*Ka+Id*Ib+Kc*Ib+Jb*Ka+Jb*Ib-Id*Ib*cos(q30)^2-Kc*Ib*cos(q30)^2-Jb*Ib*cos(q30)^2-Id*Ka*cos(q20)^2+Jb*Jc*cos(q30)^2+Id*Kb*cos(q30)^2+Kc*Kb*cos(q30)^2+Jc*Ib*cos(q20)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Jc*Ka*cos(q20)^2-Id*Ib*cos(q20)^2-Kc*Ib*cos(q20)^2-Jb*Jc*cos(q30)^2*cos(q20)^2-Id*Kb*cos(q30)^2*cos(q20)^2-Kc*Kb*cos(q30)^2*cos(q20)^2-Jc*Ib*cos(q30)^2*cos(q20)^2+Id*Ib*cos(q30)^2*cos(q20)^2+Kc*Ib*cos(q30)^2*cos(q20)^2+Jc*Kb*cos(q30)^2*cos(q20)^2+Jb*Kc*cos(q30)^2*cos(q20)^2+Jb*Id*cos(q30)^2*cos(q20)^2+Jc*Id*cos(q30)^2);
A88 = (cos(q30)*cos(q20)*Jc*sin(q30)*Omega*Jd+cos(q30)*cos(q20)*Jb*sin(q30)*Omega*Jd)/(Kc*Ka+Id*Ka+Id*Ib+Kc*Ib+Jb*Ka+Jb*Ib-Id*Ib*cos(q30)^2-Kc*Ib*cos(q30)^2-Jb*Ib*cos(q30)^2-Id*Ka*cos(q20)^2+Jb*Jc*cos(q30)^2+Id*Kb*cos(q30)^2+Kc*Kb*cos(q30)^2+Jc*Ib*cos(q20)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Jc*Ka*cos(q20)^2-Id*Ib*cos(q20)^2-Kc*Ib*cos(q20)^2-Jb*Jc*cos(q30)^2*cos(q20)^2-Id*Kb*cos(q30)^2*cos(q20)^2-Kc*Kb*cos(q30)^2*cos(q20)^2-Jc*Ib*cos(q30)^2*cos(q20)^2+Id*Ib*cos(q30)^2*cos(q20)^2+Kc*Ib*cos(q30)^2*cos(q20)^2+Jc*Kb*cos(q30)^2*cos(q20)^2+Jb*Kc*cos(q30)^2*cos(q20)^2+Jb*Id*cos(q30)^2*cos(q20)^2+Jc*Id*cos(q30)^2);
B81 = -sin(q20)*cos(q30)*(Jb+Kc+Id)/(Jb*Ib+Jb*Ka+Jc*Id*cos(q30)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Kc*Ib*cos(q20)^2*cos(q30)^2+Jc*Kb*cos(q20)^2*cos(q30)^2+Jb*Kc*cos(q20)^2*cos(q30)^2-Id*Kb*cos(q20)^2*cos(q30)^2+Jb*Id*cos(q20)^2*cos(q30)^2-Jb*Jc*cos(q20)^2*cos(q30)^2-Kc*Kb*cos(q20)^2*cos(q30)^2-Jc*Ib*cos(q20)^2*cos(q30)^2+Id*Ib*cos(q20)^2*cos(q30)^2+Id*Ib+Kc*Ka+Id*Ka+Kc*Ib-Kc*Ib*cos(q20)^2+Jc*Ka*cos(q20)^2-Id*Ka*cos(q20)^2-Jb*Ib*cos(q30)^2-Id*Ib*cos(q20)^2+Id*Kb*cos(q30)^2+Jb*Jc*cos(q30)^2+Kc*Kb*cos(q30)^2-Kc*Ib*cos(q30)^2+Jc*Ib*cos(q20)^2-Id*Ib*cos(q30)^2);
B82 = -(-Jb+Kc*cos(q20)^2-cos(q20)^2*Jc-Id-Kc+Id*cos(q20)^2)*sin(q30)/(Jb*Ib+Jb*Ka+Jc*Id*cos(q30)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Kc*Ib*cos(q20)^2*cos(q30)^2+Jc*Kb*cos(q20)^2*cos(q30)^2+Jb*Kc*cos(q20)^2*cos(q30)^2-Id*Kb*cos(q20)^2*cos(q30)^2+Jb*Id*cos(q20)^2*cos(q30)^2-Jb*Jc*cos(q20)^2*cos(q30)^2-Kc*Kb*cos(q20)^2*cos(q30)^2-Jc*Ib*cos(q20)^2*cos(q30)^2+Id*Ib*cos(q20)^2*cos(q30)^2+Id*Ib+Kc*Ka+Id*Ka+Kc*Ib-Kc*Ib*cos(q20)^2+Jc*Ka*cos(q20)^2-Id*Ka*cos(q20)^2-Jb*Ib*cos(q30)^2-Id*Ib*cos(q20)^2+Id*Kb*cos(q30)^2+Jb*Jc*cos(q30)^2+Kc*Kb*cos(q30)^2-Kc*Ib*cos(q30)^2+Jc*Ib*cos(q20)^2-Id*Ib*cos(q30)^2);
B83 = sin(q20)*cos(q20)*cos(q30)*(-Jc+Id+Kc)/(Jb*Ib+Jb*Ka+Jc*Id*cos(q30)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Kc*Ib*cos(q20)^2*cos(q30)^2+Jc*Kb*cos(q20)^2*cos(q30)^2+Jb*Kc*cos(q20)^2*cos(q30)^2-Id*Kb*cos(q20)^2*cos(q30)^2+Jb*Id*cos(q20)^2*cos(q30)^2-Jb*Jc*cos(q20)^2*cos(q30)^2-Kc*Kb*cos(q20)^2*cos(q30)^2-Jc*Ib*cos(q20)^2*cos(q30)^2+Id*Ib*cos(q20)^2*cos(q30)^2+Id*Ib+Kc*Ka+Id*Ka+Kc*Ib-Kc*Ib*cos(q20)^2+Jc*Ka*cos(q20)^2-Id*Ka*cos(q20)^2-Jb*Ib*cos(q30)^2-Id*Ib*cos(q20)^2+Id*Kb*cos(q30)^2+Jb*Jc*cos(q30)^2+Kc*Kb*cos(q30)^2-Kc*Ib*cos(q30)^2+Jc*Ib*cos(q20)^2-Id*Ib*cos(q30)^2);
B84 = -(-Jb+Kc*cos(q20)^2-cos(q20)^2*Jc-Id-Kc+Id*cos(q20)^2)/(Jb*Ib+Jb*Ka+Jc*Id*cos(q30)^2-Kc*Ka*cos(q20)^2+Jb*Kb*cos(q30)^2+Jc*Kc*cos(q30)^2+Kc*Ib*cos(q20)^2*cos(q30)^2+Jc*Kb*cos(q20)^2*cos(q30)^2+Jb*Kc*cos(q20)^2*cos(q30)^2-Id*Kb*cos(q20)^2*cos(q30)^2+Jb*Id*cos(q20)^2*cos(q30)^2-Jb*Jc*cos(q20)^2*cos(q30)^2-Kc*Kb*cos(q20)^2*cos(q30)^2-Jc*Ib*cos(q20)^2*cos(q30)^2+Id*Ib*cos(q20)^2*cos(q30)^2+Id*Ib+Kc*Ka+Id*Ka+Kc*Ib-Kc*Ib*cos(q20)^2+Jc*Ka*cos(q20)^2-Id*Ka*cos(q20)^2-Jb*Ib*cos(q30)^2-Id*Ib*cos(q20)^2+Id*Kb*cos(q30)^2+Jb*Jc*cos(q30)^2+Kc*Kb*cos(q30)^2-Kc*Ib*cos(q30)^2+Jc*Ib*cos(q20)^2-Id*Ib*cos(q30)^2);

    
% Construction des matrices A,B,C,D du modèle d'état
A = [0   0   0   0   1   0   0   0
     0   0   0   0   0   1   0   0
     0   0   0   0   0   0   1   0
     0   0   0   0   0   0   0   1
     0   0   0   0   0   A56 0   A58
     0   0   0   0   0   A66 A67 A68
     0   0   0   0   0   A76 0   A78
     0   0   0   0   0   A86 0   A88];

B = [0   0   0   0
     0   0   0   0
     0   0   0   0
     0   0   0   0
     B51 B52 B53 B54
     B61 B62 B63 B64
     B71 B72 B73 B74
     B81 B82 B83 B84];
     
C = eye(8);

D = zeros(8, 4);


% Modifications des matrices A et B si les freins sont enclenchés
% 
B_ = B;
A_ = A;

if frein_axe2==1
    for i=5:8
        for j=1:4
            B(i,j) = B_(i,j) - B_(i,2)*B_(6,j)/B_(6,2);
            A(i,j+4) = A_(i,j+4) - B_(i,2)*A_(6,j+4)/B_(6,2);
            B(6,j) = 0;
        end
        A(i,6) = 0;
        B(i,2) = 0;
    end
end

B_ = B;
A_ = A;

if frein_axe3==1
    for i=5:8
        for j=1:4
            B(i,j) = B_(i,j) - B_(i,3)*B_(7,j)/B_(7,3);
            A(i,j+4) = A_(i,j+4) - B_(i,3)*A_(7,j+4)/B_(7,3);
            B(7,j) = 0;
        end
        A(i,7) = 0;
        B(i,3) = 0;
    end
end

B_ = B;
A_ = A;

if frein_axe4==1
    for i=5:8
        for j=1:4
            B(i,j) = B_(i,j) - B_(i,4)*B_(8,j)/B_(8,4);
            A(i,j+4) = A_(i,j+4) - B_(i,4)*A_(8,j+4)/B_(8,4);
            B(8,j) = 0;
        end
        A(i,8) = 0;
        B(i,4) = 0;
    end
end

clear A_ B_ i j