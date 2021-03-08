A = 2;
N = 1000;
fs = 1000;
t = 0:1/fs:N/fs;

xt = A*sin(2*pi*10*t);
xtNoise = normrnd(xt,0.2*A) 

plot(t, xtNoise)
title("Signal with white gussian noise")
xlabel("Time [s]")
ylabel("Ampitude [a.u.]")


%mean value of signal
    %----first approach ---- 
meanValue = mean(xtNoise)
    %----second approach ----
meanValue1 = (1/N) * sum (xtNoise) 


%max value of signal
    %----first approach ---- 
maxValue = max(xtNoise)
    %----second approach ----
maxValue1 = 0
for i = 1:length(xtNoise)
    if maxValue1 <= xtNoise(i)
        maxValue1 =  xtNoise(i)
    end
end

%min value of signal
    %----first approach ---- 
minValue = min(xtNoise)
    %----second approach ----
minValue1 = 0
for i = 1:length(xtNoise)
    if minValue1 >= xtNoise(i)
        minValue1 =  xtNoise(i)
    end
end

%peak-to-peak value of signal
peakTopeak = abs(minValue) + maxValue

%Standard deviation of signal
    %----first approach ---- 
standardDeviation = std(xtNoise)
    %----second approach ----
standardDeviation1 = sqrt(sum((xtNoise-meanValue).^2)/N)

%Variance of signal
    %----first approach ---- 
variance = var(xtNoise)
    %----second approach ----
variance1 = standardDeviation1^2

%Energy of signal
energy = sum(abs(xtNoise).^2)

%Signal average power 
averagePower = (energy*fs)/N

%Root Mean Square
RMS = sqrt(mean(abs(xtNoise).^2)*fs/N)

%Signal-to-noise ratio
SNR = (sqrt(mean(abs(xt).^2)*fs/N)/RMS)^2;


