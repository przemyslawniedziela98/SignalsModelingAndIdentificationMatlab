fs = 20;
t = 1:1/fs:10;
f1 = 40;
A = 1;

y1 = A*sin(2*pi*f1*t);

p = plot(t,y1,"r")
titleToShow = sprintf('Influence of sampling frequency on signals reconstructions [sampling frequency is %d Hz]',fs)
title(titleToShow)
xlabel("Time [s]")
ylabel("Ampitude [a.u.]")