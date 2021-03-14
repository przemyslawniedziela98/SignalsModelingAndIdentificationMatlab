fs = 512;
fN=fs/2
t = 0:1/fs:3;
A1=1;
A2=3;
A3=1;

f1=10;
f2=80;
f3=120;

y1=A1*sin(2*pi*f1*t+0);
y2=A2*sin(2*pi*f2*t+deg2rad(20));
y3=A3*sin(2*pi*f3*t+deg2rad(40));

y=y1+y2+y3;

%Fourier Transform

S = fft(y);
N = length(S);
df = fs/N;

fv = 0:df:fs-df;

%Inverse  Fourier Transform
iS = ifft(S);
subplot(1,2,1)
plot(t,iS,"r")
xlabel("Time [s]")
ylabel("Ampitude [a.u.]")
xlim([0 0.25])
title("Inverse Fourier Transformed - Time Domain Signal")
subplot(1,2,2)
plot(t, y, "g")
xlim([0 0.25])
xlabel("Time [s]")
ylabel("Ampitude [a.u.]")
title("Orginal Time Domain Signal")

