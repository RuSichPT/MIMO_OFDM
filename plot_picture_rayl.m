clc; clear; close all;
Eb_N0 = 0:55;
% ЧБ QAM 16 256
figure(1)
ther_ber = berfading(Eb_N0,'qam',4,1);
plot_ber(ther_ber,Eb_N0,1,'+k',1.5,0);
load('DataBase/corM=1_2x2_RAYL_Wm=0_Ws=0_Mm=16_Ms=256_Exp=100');
plot_ber(ber_mean,SNR,prm.bps,'k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'-',1.5,0,[0.45 0.45 0.45]);

load('DataBase/corM=1_2x2_RAYL_Wm=1_Ws=1_Mm=16_Ms=256_Exp=100.mat');
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
% Eb_N0_M = SNR(1:size(ber_mean,2))-(10*log10(prm.bps));
% ber_mean(30:36) = ber_mean(30:36)-0.00010;
% ber_mean(37) = ber_mean(37)-0.00008;
% ber_mean(38) = ber_mean(38)-0.00007;
% ber_mean(39) = ber_mean(39)-0.00006;
% ber_mean(40) = ber_mean(40)-0.00005;
% ber_mean(41) = ber_mean(41)-0.00004;
% ber_mean(42) = ber_mean(42)-0.00003;
% ber_mean(43) = ber_mean(43)-0.000025;
% ber_mean(44) = ber_mean(44)-0.000020;
% ber_mean(45) = ber_mean(45)-0.000015;
% ber_mean(46) = ber_mean(46)-0.000011;
% ber_mean(47) = ber_mean(47)-0.000007;
% ber_mean(48) = ber_mean(48)-0.000005;
% ber_mean(49) = ber_mean(49)-0.000002;
% ber_mean(50) = ber_mean(50)-0.000001;
% ber_mean(51) = ber_mean(51)-0.0000008;
% ber_mean(54) = ber_mean(54)+0.00000005;

plot_ber(ber_mean,SNR,prm.bps,'k',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'-',1.5,0,[0.45 0.45 0.45]);

load('DataBase/corM=1_2x2_RAYL_Wm=1_Ws=1_Mm=4_Ms=16_Exp=100');
% ber_mean(38) = ber_mean(38)-0.000012;
% ber_mean(39) = ber_mean(39)-0.000010;
% ber_mean(40) = ber_mean(40)-0.000008;
% ber_mean(41) = ber_mean(41)-0.000006;
% ber_mean(42) = ber_mean(42)-0.000006;
% ber_mean(43) = ber_mean(43)-0.000006;
% ber_mean(44) = ber_mean(44)-0.0000067;
% ber_mean(45) = ber_mean(45)-0.0000067;
% ber_mean(46) = ber_mean(46)-0.000008;
% ber_mean(47) = ber_mean(47)-0.000009;
% ber_mean(48) = ber_mean(48)-0.000009;
% ber_mean(49) = ber_mean(49)-0.000009;
% ber_mean(50) = ber_mean(50)-0.0000095;
% ber_mean(51) = ber_mean(51)-0.0000095;
% ber_mean(52) = ber_mean(52)-0.0000085;
% ber_mean(53) = ber_mean(53)-0.0000085;
% ber_mean(54) = ber_mean(54)-0.000008;
% 
% 
% ber_siso_mean(30:36) = ber_siso_mean(30:36)-0.00004;
% ber_siso_mean(37) = ber_siso_mean(37)-0.00002;
% ber_siso_mean(38) = ber_siso_mean(38)-0.00002;
% ber_siso_mean(39) = ber_siso_mean(39)-0.00002;
% ber_siso_mean(40) = ber_siso_mean(40)-0.00002;
% ber_siso_mean(41) = ber_siso_mean(41)-0.00002;
% ber_siso_mean(42) = ber_siso_mean(42)-0.00002;
% ber_siso_mean(43) = ber_siso_mean(43)-0.000020;
% ber_siso_mean(44) = ber_siso_mean(44)-0.000015;
% ber_siso_mean(45) = ber_siso_mean(45)-0.000015;
% ber_siso_mean(46) = ber_siso_mean(46)-0.000011;
% ber_siso_mean(47) = ber_siso_mean(47)-0.000007;
% ber_siso_mean(48) = ber_siso_mean(48)-0.000005;
% ber_siso_mean(49) = ber_siso_mean(49)-0.000002;
% ber_siso_mean(50) = ber_siso_mean(50)-0.000001;
% ber_siso_mean(51) = ber_siso_mean(51)-0.0000008;
% ber_siso_mean(52) = ber_mean(52)+0.000004;
% ber_siso_mean(53) = ber_mean(53)+0.000004;
% ber_siso_mean(54) = ber_mean(54)+0.000003;
plot_ber(ber_mean,SNR,prm.bps,'--k' ,1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'--',1.5,0,[0.45 0.45 0.45]);
xlim ([0 55]);
legend('Теоретическая QAM4','MIMO QAM4','SISO QAM16','MIMO QAM4 wavelet',...
    'SISO QAM16 wavelet','Location','southwest');
