clc; clear;
Eb_N0 = 0:40;
% ЧБ QAM 4
figure(1)
ther_ber = berawgn(Eb_N0,'qam',4);
load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=0_Ws=0_Mm=4_Ms=4_Exp=1.mat');
SNR = SNR(1:size(ber_mean,2));
plot_ber(ber_mean,SNR,prm.bps,'k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'-',1.5,0,[0.45 0.45 0.45]);

load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=1_Ws=1_Mm=4_Ms=4_Exp=1.mat');
SNR = SNR(1:size(ber_mean,2));
plot_ber(ber_mean,SNR,prm.bps,'--k' ,1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'--',1.5,0,[0.45 0.45 0.45]);
plot_ber(ther_ber,Eb_N0,1,'+k',1.5,0);
title('QAM4')
legend ('MIMO','SISO','MIMO wavelet','SISO wavelet','Теоретическая awgn')

% ЦВЕТ QAM 4
figure(2)
load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=0_Ws=0_Mm=4_Ms=4_Exp=1.mat');
SNR = SNR(1:size(ber_mean,2));
plot_ber(ber_mean,SNR,prm.bps,'k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'r',1.5,0);

load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=1_Ws=1_Mm=4_Ms=4_Exp=1.mat');
SNR = SNR(1:size(ber_mean,2));
plot_ber(ber_mean,SNR,prm.bps,'--k' ,1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'--r',1.5,0);
plot_ber(ther_ber,Eb_N0,1,'b',1.5,0);
title('QAM4')
legend ('MIMO','SISO','MIMO wavelet','SISO wavelet','Теоретическая awgn')

% ЧБ QAM 16
figure(3)
ther_ber = berawgn(Eb_N0,'qam',16);
load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=0_Ws=0_Mm=16_Ms=16_Exp=1.mat');
SNR = SNR(1:size(ber_mean,2));
plot_ber(ber_mean,SNR,prm.bps,'k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'-',1.5,0,[0.45 0.45 0.45]);

load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=1_Ws=1_Mm=16_Ms=16_Exp=1.mat');
SNR = SNR(1:size(ber_mean,2));
plot_ber(ber_mean,SNR,prm.bps,'--k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'--',1.5,0,[0.45 0.45 0.45]);
plot_ber(ther_ber,Eb_N0,1,'+k',1.5,0);
title('QAM16')
legend ('MIMO','SISO','MIMO wavelet','SISO wavelet','Теоретическая awgn')

% ЦВЕТ QAM 16
figure(4)
load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=0_Ws=0_Mm=16_Ms=16_Exp=1.mat');
SNR = SNR(1:size(ber_mean,2));
plot_ber(ber_mean,SNR,prm.bps,'k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'r',1.5,0);

load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=1_Ws=1_Mm=16_Ms=16_Exp=1.mat');
SNR = SNR(1:size(ber_mean,2));
plot_ber(ber_mean,SNR,prm.bps,'--k' ,1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'--r',1.5,0);
plot_ber(ther_ber,Eb_N0,1,'b',1.5,0);
title('QAM16')
legend ('MIMO','SISO','MIMO wavelet','SISO wavelet','Теоретическая awgn')

% ЧБ QAM 32
figure(5)
ther_ber = berawgn(Eb_N0,'qam',32);
load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=0_Ws=0_Mm=32_Ms=32_Exp=1.mat');
SNR = SNR(1:size(ber_mean,2));
plot_ber(ber_mean,SNR,prm.bps,'k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'-',1.5,0,[0.45 0.45 0.45]);

load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=1_Ws=1_Mm=32_Ms=32_Exp=1.mat');
SNR = SNR(1:size(ber_mean,2));
plot_ber(ber_mean,SNR,prm.bps,'--k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'--',1.5,0,[0.45 0.45 0.45]);
plot_ber(ther_ber,Eb_N0,1,'+k',1.5,0);
title('QAM32')
legend ('MIMO','SISO','MIMO wavelet','SISO wavelet','Теоретическая awgn')

% ЦВЕТ QAM 32
figure(6)
load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=0_Ws=0_Mm=32_Ms=32_Exp=1.mat');
SNR = SNR(1:size(ber_mean,2));
plot_ber(ber_mean,SNR,prm.bps,'k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'r',1.5,0);

load('DataBase/corM=1_2x2_RAYL_SPECIAL_Wm=1_Ws=1_Mm=32_Ms=32_Exp=1.mat');
SNR = SNR(1:size(ber_mean,2));
plot_ber(ber_mean,SNR,prm.bps,'--k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'--r',1.5,0);
plot_ber(ther_ber,Eb_N0,1,'b',1.5,0);
title('QAM32')
legend ('MIMO','SISO','MIMO wavelet','SISO wavelet','Теоретическая awgn')

% ther_ber_1 = berfading(Eb_N0,'qam',4,1);
% plot_ber(ther_ber_1,Eb_N0,1,'k',1.5,0)
% str_ther1 = ['Теоретическая ' 'QAM4'];

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
