clc; clear;
Eb_N0 = 0:50;
figure(1)
ther_ber_1 = berfading(Eb_N0,'qam',4,1);
plot_ber(ther_ber_1,Eb_N0,1,'k',1.5,0)
load('DataBase/corM=1_2x2_RAYL_Wm=1_Ws=1_Mm=16_Ms=256_Exp=50');
plot_ber(ber_mean,SNR,prm.bps,'--r',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'--b',1.5,0);
str1 = ['MIMO ' num2str(prm.numTx) 'x' num2str(prm.numRx) ' QAM' num2str(prm.M) ];
str_siso1 = ['SISO ' 'QAM' num2str(prm.M_siso)];


load('DataBase/123corM=1_2x2_RAYL_Wm=1_Ws=1_Mm=16_Ms=256_Exp=100');
plot_ber(ber_mean,SNR,prm.bps,'r',1.5,0);
plot_ber(ber_siso_mean,SNR,prm.bps_siso,'b',1.5,0);
str2 = ['MIMOw ' num2str(prm.numTx) 'x' num2str(prm.numRx) ' QAM' num2str(prm.M) ];
str_siso2 = ['SISOw ' 'QAM' num2str(prm.M_siso)];
% 
legend('Теоретическая QAM4',str1,str_siso1,str2,str_siso2);
