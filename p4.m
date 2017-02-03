[mySound,fs]=audioread('hootie.wav'); % loads mySound
out = mySound;
out2 = mySound;
for n=2:length(mySound)
    out(n,1) = .9*out(n-1,1) + mySound(n,1); % left channel
    out(n,2) = .9*out(n-1,2) + mySound(n,2); % right channel
end

for n=2:length(mySound)
    out2(n,1)=mySound(n,1)-mySound(n-1,1); % left
    out2(n,2)=mySound(n,2)-mySound(n-1,2); % right
end

subplot (3, 1 ,1);
plot(mySound);
subplot (3, 1 ,2);
plot(out);
subplot (3, 1 ,3);
plot(out2);

%soundsc(out,fs)            % low pass filtered
soundsc(out2,fs)            % high pass filtered

audiowrite('treble4.wav', out, fs);
audiowrite('high4.wav', out2, fs);