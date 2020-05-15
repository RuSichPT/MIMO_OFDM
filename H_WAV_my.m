function [H_WAV] = H_WAV_my(H_LS)

%sqtwolog  rigrsure  minimaxi heursure
H_WAV_RE = wdenoise(real(H_LS));%,'Wavelet','db4','DenoisingMethod','UniversalThreshold');
H_WAV_IM = wdenoise(imag(H_LS));%,'Wavelet','db4','DenoisingMethod','UniversalThreshold');
H_WAV=H_WAV_RE+1i*H_WAV_IM;
end

