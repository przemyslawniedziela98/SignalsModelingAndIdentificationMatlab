%Fourier Transformation of signals

%impulse
fs =1000
t=-10:1/fs:10;
f=1*(t>=-1 & t<=1);

figure(1)
subplot(1,2,1)
plot(t,f)
xlabel('Time [s]')
ylabel('Ampitude [a.u.]')
title('Impulse signal')
xlim([-5 5])
ylim([-0.1 1.5])

y=fftshift(abs(fft(f))); 
N=length(y);        
n=-(N-1)/2:(N-1)/2; 
figure(1)
subplot(1,2,2)
plot(n,y);  
title(['Rectangular Puls frequency distribution']);
xlabel('frequency(Hz) ');
ylabel('Amplitude');
xlim([-100 100])

%white noise
t = 0:1/fs:10;
noise = (rand(length(t),1)-0.5)*2
figure(2)
subplot(1,2,1)
plot(t,noise)
xlim([0 0.5])
ylim([-1.1 1.1])
xlabel('Time [s]')
ylabel('Ampitude [a.u.]')
title('white noise signal')

y = fftshift(abs(fft(noise)))
N=length(y);        
n=-(N-1)/2:(N-1)/2; 
figure(2)
subplot(1,2,2)
plot(n,y);  
title(['white noise frequency distribution']);
xlabel('frequency(Hz) ');
ylabel('Amplitude');


%unit step function
t = (0:1/fs:10)'; 
step = zeros(size(t)); 
step(t>=1) = 1; 
figure(3)
subplot(1,2,1)
plot(t,step) 
xlabel('Time [s]')
ylabel('Ampitude [a.u.]')
ylim([-0.5 1.2])
title('step function')

y = fftshift(abs(fft(step)))
N=length(y);        
n=-(N-1)/2:(N-1)/2; 
figure(3)
subplot(1,2,2)
plot(n, y);  
title(['step frequency distribution']);
xlabel('frequency(Hz) ');
ylabel('Amplitude');
xlim([-50 50])

%Triangular waveform 
t = 0:1/fs:20;
xt =abs(mod((t+pi)/pi, 2)-1);

figure(4)
subplot(1,2,1)
plot(t,x)
xlabel('Time [s]')
ylabel('Ampitude [a.u.]')
title('Triangular waveform signal')

y = fftshift(abs(fft(xt)))
N=length(y);        
n=-(N-1)/2:(N-1)/2; 
figure(4)
subplot(1,2,2)
plot(n, y);  
title(['Triangular waveform frequency distribution']);
xlabel('frequency(Hz) ');
ylabel('Amplitude');
xlim([-16 16])
