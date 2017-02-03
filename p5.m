[mySound,fs] = audioread('sound1.wav');
slow = fs/1.5;
fast = fs*1.5;
%soundsc(mySound, slow);
soundsc(mySound, fast);