clc; clear;close all
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
ylim([10^-5 10^0]);

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
ylim([10^-5 10^0]);
