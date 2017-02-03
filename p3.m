[mySound,fs]=audioread('road.wav');
size(mySound);

left=mySound(:,1);
right=mySound(:,2);
out = left - right;

subplot (2, 1 ,1);
plot(mySound);
subplot (2, 1 ,2);
plot(out);

soundsc(out,fs);
audiowrite('karaoke3.wav', out, fs);