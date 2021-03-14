%foutier series approximation
fs = 1e3;
t = 0:1/fs:10;
A = 1;
T0 = 1;
f0 = 1/T0;
omega0 = 2*pi/T0;

y1 = A*sign(sin(2*pi*f0*t))

m = {1,3,11,21,101}

for i = 1:length(m)
    ym = zeros(size(y1))
    nexttile
    for k = 1:2:m{i}
        bk = 4*A/(k*pi);
        yk = bk*sin(k*omega0*t);
        ym = ym+yk;

        figure(1)
        plot(t,y1,t,ym)
        title(["k = " + num2str(k)])
        xlim([0 1.1])
        xlabel('Time [s]')
        ylabel('Ampitude [a.u.]')
    end
end

%approximation error
errorValues = zeros(size(m))
for i = 1:length(m)
    ym = zeros(size(y1))
    nexttile
    checkErrorValues = zeros(size(ym))
    for k = 1:2:m{i}
        bk = 4*A/(k*pi);
        yk = bk*sin(k*omega0*t);
        ym = ym+yk;

        figure(2)
        plot(t,y1 - ym) 
        title(["k = " + num2str(k)])
        xlim([0 1.1])
        xlabel('Time [s]')
        ylabel('Ampitude [a.u.]')
        checkErrorValues = y1 - ym
    end
    errorValues(i) = max(checkErrorValues)
end

for i = 1:length(m)
    nexttile
    k = 1:2:m{i}
    bk = k*A/(2*pi)
    
    figure(3)
    plot(k*omega0/(2*pi),bk)
    title(["k = " + num2str(max(k))])
    xlabel('(k*omega0)/(2*pi)')
    ylabel('bk')
end
