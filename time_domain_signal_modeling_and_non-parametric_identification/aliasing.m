fs = 200;
fN=fs/2
t = 0:1/fs:3;
A1=1;
A2=3;
A3=1;

f1=10;
f3=120;

y1=A1*sin(2*pi*f1*t+0);
y3=A3*sin(2*pi*f3*t+deg2rad(40));

y=y1+y3;
figure(1)
plot(t,y)
xlim([0 0.5])
xlabel("Time [s]")
ylabel("Ampitude [a.u.]")
title("Signal composed from 3 sines with shifted phases and amplitudes in 1: 3: 1")

%Fourier Transform

S = fft(y);
N = length(S);
df = fs/N;

fv = 0:df:fs-df;
figure(2)
plot(fv,S)
xlim([0 205])
xline(fN,"g","Nyqiust frequency")
xlabel("frequency [Hz]")
