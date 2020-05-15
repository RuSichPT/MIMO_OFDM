clc; clear;
Eb_N0 = 0:40;
ther_ber_1 = berfading(Eb_N0,'qam',4,1);
plot_ber(ther_ber_1,Eb_N0,1,'k',1,0)
str_ther1 = ['Теоретическая ' 'QAM4'];

% load('corM=1_2x2_RAYL_Wm=0_Ws=0_Mm=4_Ms=16_Exp=100.mat');
% plot_ber(ber_mean,SNR,prm.bps,'.k',1,0);
% plot_ber(ber_siso_mean,SNR,prm.bps,'*k',1,0);
% str1 = ['MIMO ' num2str(prm.numTx) 'x' num2str(prm.numRx) ' QAM' num2str(prm.M) ];
% str_siso1 = ['SISO ' 'QAM' num2str(prm.M_siso)];

load('corM=1_2x2_RAYL_Wm=1_Ws=1_Mm=4_Ms=16_Exp=100.mat');
plot_ber(ber_mean,SNR,prm.bps,'-.k',1,0);
plot_ber(ber_siso_mean,SNR,prm.bps,'-*k',1,0);
str2 = ['MIMOw ' num2str(prm.numTx) 'x' num2str(prm.numRx) ' QAM' num2str(prm.M) ];
str_siso2 = ['SISOw ' 'QAM' num2str(prm.M_siso)];

legend(str_ther1,str1,str_siso1,str2,str_siso2);