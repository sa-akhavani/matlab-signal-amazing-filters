[mySound,fs] = audioread('sound1.wav');

output=flipud(mySound);

subplot (2, 1 ,1)
plot(mySound)
subplot (2, 1 ,2)
plot(output)

sound(output,fs);
audiowrite('out1.wav', output, fs);