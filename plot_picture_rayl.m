clc; clear; %close all;
Eb_N0 = 0:55;
% ЧБ QAM 16 256
figure()
ther_ber = berfading(Eb_N0,'qam',4,1);
plot_ber(ther_ber,Eb_N0,1,'+k',1.5,0);
load('DataBase/corM=1_2x2_RAYL_Wm=0_Ws=0_Mm=16_Ms=256_Exp=100');
SNR = SNR(1:size(ber,2));
plot_ber(ber_mean,SNR,prm.bps,'k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'-',1.5,0,[0.45 0.45 0.45]);

load('DataBase/corM=1_2x2_RAYL_Wm=1_Ws=1_Mm=16_Ms=256_Exp=100.mat');
% ber_mean(35:end) = ber_mean(35:end)*0.9;
% ber_mean(45:end) = ber_mean(45:end)*0.85;
plot_ber(ber_mean,SNR,prm.bps,'--k' ,1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'--',1.5,0,[0.45 0.45 0.45]);
xlim ([0 55]);
legend('Теоретическая QAM4','MIMO QAM16','SISO QAM256','MIMO QAM16 wavelet',...
    'SISO QAM256 wavelet','Location','southwest');

% ЦВЕТ QAM 16 256
figure(2)
ther_ber = berfading(Eb_N0,'qam',4,1);
plot_ber(ther_ber,Eb_N0,1,'b',1.5,0);
load('DataBase/corM=1_2x2_RAYL_Wm=0_Ws=0_Mm=16_Ms=256_Exp=100');
SNR = SNR(1:size(ber,2));
plot_ber(ber_mean,SNR,prm.bps,'k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'r',1.5,0);

load('DataBase/corM=1_2x2_RAYL_Wm=1_Ws=1_Mm=16_Ms=256_Exp=100.mat');
plot_ber(ber_mean,SNR,prm.bps,'--k' ,1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'--r',1.5,0);

xlim ([0 55]);
legend('Теоретическая QAM4','MIMO QAM16','SISO QAM256','MIMO QAM16 wavelet',...
    'SISO QAM256 wavelet','Location','southwest');

% ЧБ QAM 32
figure(3)
ther_ber = berfading(Eb_N0,'qam',4,1);
plot_ber(ther_ber,Eb_N0,1,'+k',1.5,0);
load('DataBase/corM=1_2x2_RAYL_Wm=0_Ws=0_Mm=32_Ms=32_Exp=100');
SNR = SNR(1:size(ber,2));
plot_ber(ber_mean,SNR,prm.bps,'k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'-',1.5,0,[0.45 0.45 0.45]);

load('DataBase/corM=1_2x2_RAYL_Wm=1_Ws=1_Mm=32_Ms=32_Exp=100.mat');
% ber_mean = mean(ber(7,:),1);
plot_ber(ber_mean,SNR,prm.bps,'--k' ,1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'--',1.5,0,[0.45 0.45 0.45]);

xlim ([0 55]);
legend('Теоретическая QAM4','MIMO QAM32','SISO QAM32','MIMO QAM32 wavelet',...
    'SISO QAM32 wavelet','Location','southwest');

% ЦВЕТ QAM 32
figure(4)
ther_ber = berfading(Eb_N0,'qam',4,1);
plot_ber(ther_ber,Eb_N0,1,'b',1.5,0);
load('DataBase/corM=1_2x2_RAYL_Wm=0_Ws=0_Mm=32_Ms=32_Exp=100');
plot_ber(ber_mean,SNR,prm.bps,'k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'r',1.5,0);

load('DataBase/corM=1_2x2_RAYL_Wm=1_Ws=1_Mm=32_Ms=32_Exp=100.mat');
plot_ber(ber_mean,SNR,prm.bps,'--k' ,1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'--r',1.5,0);

xlim ([0 55]);
legend('Теоретическая QAM4','MIMO QAM32','SISO QAM32','MIMO QAM32 wavelet',...
    'SISO QAM32 wavelet','Location','southwest');
% ЧБ QAM 4 16
figure(5)
load('DataBase/corM=1_2x2_RAYL_Wm=0_Ws=0_Mm=4_Ms=16_Exp=100');
ther_ber = berfading(Eb_N0,'qam',4,1);
plot_ber(ther_ber,Eb_N0,1,':k',1.5,0);


plot_ber(ber_mean,SNR,prm.bps,'k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'-',1.5,0,[0.45 0.45 0.45]);

load('DataBase/corM=1_2x2_RAYL_Wm=1_Ws=1_Mm=4_Ms=16_Exp=100');

plot_ber(ber_mean,SNR,prm.bps,'--k' ,1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'--',1.5,0,[0.45 0.45 0.45]);
xlim ([0 55]);
legend('Теоретическая QAM4','MIMO QAM4','SISO QAM16','MIMO QAM4 wavelet',...
    'SISO QAM16 wavelet','Location','southwest');
