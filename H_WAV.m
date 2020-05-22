function [H_WAV] = H_WAV(Wave_Nam,s,H_LS)

%sqtwolog  rigrsure  minimaxi heursure
H_WAV_RE = wden(real(H_LS),'sqtwolog','s','one',s,Wave_Nam);
H_WAV_IM = wden(imag(H_LS),'sqtwolog','s','one',s,Wave_Nam);
H_WAV=H_WAV_RE+1i*H_WAV_IM;
end

