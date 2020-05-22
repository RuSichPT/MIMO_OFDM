clear;clc;
siglen = 100000; % Number of bits in each trial
M = 2; % DBPSK is binary.
EbN0vec = 0:5; % Vector of EbN0 values
minnumerr = 5; % Compute BER only after 5 errors occur.
numEbN0 = length(EbN0vec); % Number of EbN0 values

ber = zeros(1,numEbN0); % final BER values
berVec = zeros(3,numEbN0); % Updated BER values
intv = cell(1,numEbN0); % Cell array of confidence intervals

errorCalc = comm.ErrorRate;

% Loop over the vector of EbN0 values.
for jj = 1:numEbN0
    EbN0 = EbN0vec(jj);
    snr = EbN0; % Because of binary modulation
    reset(errorCalc)
    awgnChan.SNR = snr; % Assign Channel SNR
    
    while (berVec(2,jj) < minnumerr)
        msg = randi([0,M-1],siglen,1); % Generate message sequence
        %        txsig = step(hMod,msg); % Modulate
        txsig = dpskmod(msg,M); % Modulate
        awgnChan.SignalPower = (txsig'*txsig)/length(txsig); % Calculate and assign signal power
        %        rxsig = awgnChan(txsig); % Add noise.
        rxsig = awgn(txsig,snr,'measured'); % Add noise.
        %        decodmsg = step(hDemod, rxsig); % Demodulate.
        decodmsg = dpskdemod(rxsig,M); % Demodulate.
        berVec(:,jj) = errorCalc(msg,decodmsg); % Calculate BER
    end

    [ber(jj), intv1] = berconfint(berVec(2,jj),berVec(3,jj),0.98);
    intv{jj} = intv1;
    disp(['EbN0 = ' num2str(EbN0) ' dB, ' num2str(berVec(2,jj)) ...
        ' errors, BER = ' num2str(ber(jj))])
end

fitEbN0 = EbN0vec(1):0.25:EbN0vec(end); % Interpolation values
berfit(EbN0vec,ber,fitEbN0);
hold on;
for jj=1:numEbN0
    semilogy([EbN0vec(jj) EbN0vec(jj)],intv{jj},'g-+');
end
hold off;