[mySound,fs]=audioread('hootie.wav');
size(mySound);
left=mySound(:,1);
right=mySound(:,2);

subplot (4, 1 ,1);
plot(mySound);
subplot (4, 1 ,2);
plot(left);
subplot (4, 1 ,3);
plot(right);

%soundsc(left,fs);
soundsc(right,fs);

audiowrite('left2.wav', left, fs);
audiowrite('right2.wav', right, fs);