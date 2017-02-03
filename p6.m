[mySound,fs] = audioread('hootie.wav');
mySound = mySound(:,1);
fade_len = 4;

fade_samples = round(fade_len.*fs);
fade_scale = linspace(0,1,fade_samples)';

sig_faded = mySound;
sig_faded(1:fade_samples) = mySound(1:fade_samples).*fade_scale;

subplot (2, 1 ,1)
plot(mySound)
subplot (2, 1 ,2)
plot(sig_faded)

sound(sig_faded,fs);
audiowrite('fade6.wav', sig_faded, fs);