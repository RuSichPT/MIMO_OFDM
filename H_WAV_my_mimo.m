function [H_WAV] = H_WAV_my_mimo(H_LS)

%sqtwolog  rigrsure  minimaxi heursure
for i = 1:size(H_LS,2)
    H_WAV_RE = wdenoise(real(squeeze(H_LS(:,i,:))));%,'Wavelet','db4','DenoisingMethod','UniversalThreshold');
    H_WAV_IM = wdenoise(imag(squeeze(H_LS(:,i,:))));%,'Wavelet','db4','DenoisingMethod','UniversalThreshold');
    H_WAV(:,i,:) = H_WAV_RE+1i*H_WAV_IM;
end
end

