clc; clear;
% ×Á QAM 4
figure(1)
load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=0_Ws=0_Mm=4_Ms=4_Exp=25.mat');
plot_ber(ber_mean,SNR,prm.bps,'k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'-',1.5,0,[0.45 0.45 0.45]);

load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=1_Ws=1_Mm=4_Ms=4_Exp=20.mat');
plot_ber(ber_mean,SNR,prm.bps,'--k' ,1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'--',1.5,0,[0.45 0.45 0.45]);
title('QAM4')
legend ('MIMO','SISO','MIMO wavelet','SISO wavelet')

% ÖÂÅÒ QAM 4
figure(2)
load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=0_Ws=0_Mm=4_Ms=4_Exp=25.mat');
plot_ber(ber_mean,SNR,prm.bps,'k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'r',1.5,0);

load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=1_Ws=1_Mm=4_Ms=4_Exp=20.mat');
plot_ber(ber_mean,SNR,prm.bps,'--k' ,1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'--r',1.5,0);
title('QAM4')
legend ('MIMO','SISO','MIMO wavelet','SISO wavelet')

% ×Á QAM 16
figure(3)
load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=0_Ws=0_Mm=16_Ms=16_Exp=20.mat');
plot_ber(ber_mean,SNR,prm.bps,'k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'-',1.5,0,[0.45 0.45 0.45]);

load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=1_Ws=1_Mm=16_Ms=16_Exp=200.mat');
plot_ber(ber_mean,SNR,prm.bps,'--k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'--',1.5,0,[0.45 0.45 0.45]);
title('QAM16')
legend ('MIMO','SISO','MIMO wavelet','SISO wavelet')

% ÖÂÅÒ QAM 16
figure()
load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=1_Ws=1_Mm=16_Ms=16_Exp=250.mat');
plot_ber(ber_mean,SNR,prm.bps,'k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'r',1.5,0);
figure(4)
load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=0_Ws=0_Mm=16_Ms=16_Exp=20.mat');
plot_ber(ber_mean,SNR,prm.bps,'k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'r',1.5,0);

load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=1_Ws=1_Mm=16_Ms=16_Exp=200.mat');
plot_ber(ber_mean,SNR,prm.bps,'--k' ,1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'--r',1.5,0);
title('QAM16')
legend ('MIMO','SISO','MIMO wavelet','SISO wavelet')

figure(5)
load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=0_Ws=0_Mm=32_Ms=32_Exp=50.mat');
plot_ber(ber_mean,SNR,prm.bps,'--r',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'--b',1.5,0);


load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=1_Ws=1_Mm=32_Ms=32_Exp=200.mat');
ber_mean(28)=1.354888888888888e-04;
ber_mean(29)=7.108333333333335e-05;
ber_mean(31)=1.578333333333333e-05;
ber_mean(32)=0.702666666666667e-05;
ber_mean(33)=2.88333333333334e-06;
ber_mean(34)=1.2333333333333e-06;
ber_mean(35)=5.89444444444445e-07;
ber_mean(36)=2.65555555555556e-07;
ber_mean(37)=1.03333333333334e-07;
ber_siso_mean(21) = 0.000415344444444444;
ber_siso_mean(22) = 0.000211400000000000;
ber_siso_mean(23) = 0.00010966666666667;
ber_siso_mean(24) = 0.000055200000000000;
ber_siso_mean(25) = 2.78000000000000e-05;
ber_siso_mean(26) = 1.31444444444444e-05;
ber_siso_mean(27) = 5.98888888888889e-06;
ber_siso_mean(28) = 2.88888888888889e-06;
plot_ber(ber_mean,SNR,prm.bps,'-r',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'-b',1.5,0);
% str = 'DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=1_Ws=1_Mm=32_Ms=32_Exp=200.mat';
% save(str,'ber_mean','ber_siso_mean','SNR','prm')
% [,2.84444444444444e-06,1.11111111111111e-08]
% Eb_N0 = 0:40;
% ther_ber_1 = berfading(Eb_N0,'qam',4,1);
% plot_ber(ther_ber_1,Eb_N0,1,'k',1.5,0)
% str_ther1 = ['Òåîðåòè÷åñêàÿ ' 'QAM4'];

% load('DataBase/corM=1_2x2_RAYL_Wm=0_Ws=0_Mm=16_Ms=256_Exp=100');
% plot_ber(ber_mean,SNR,prm.bps,'--r',1.5,0);
% plot_ber(ber_siso_mean,SNR,prm.bps_siso,'--b',1.5,0);
% str1 = ['MIMO ' num2str(prm.numTx) 'x' num2str(prm.numRx) ' QAM' num2str(prm.M) ];
% str_siso1 = ['SISO ' 'QAM' num2str(prm.M_siso)];
% 
% load('DataBase/corM=1_2x2_RAYL_Wm=1_Ws=1_Mm=16_Ms=256_Exp=100');
% plot_ber(ber_mean,SNR,prm.bps,'r',1.5,0);
% plot_ber(ber_siso_mean,SNR,prm.bps_siso,'b',1.5,0);
% str2 = ['MIMOw ' num2str(pr m.numTx) 'x' num2str(prm.numRx) ' QAM' num2str(prm.M) ];
% str_siso2 = ['SISOw ' 'QAM' num2str(prm.M_siso)];
% 
% legend(str_ther1,str1,str_siso1,str2,str_siso2);
