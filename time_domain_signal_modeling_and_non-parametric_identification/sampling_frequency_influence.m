%influence of sampling frequency on reconstructions 

fs = {200,5};
f1 = 1;
f2 = 4;
f3 = 6;
A = 1;

tiledlayout(length(fs),1) 
for i = 1:length(fs)
    t = 0:1/fs{i}:1;
    y1 = A*sin(2*pi*f1*t);
    y2 = A*sin(2*pi*f2*t);
    y3 = A*sin(2*pi*f3*t);
    
    nexttile
    p = plot(t,y1,"r", t,y2,"b", t,y3,"g")
    p(1).LineWidth = 3;
    p(2).LineWidth = 1;
    p(3).LineWidth = 2;
    xlim([0 1])
    ylim([-2 2])
    titleToShow = sprintf('Influence of sampling frequency on signals reconstructions [sampling frequency is %d Hz]',fs{i})
    title(titleToShow)
    xlabel("Time [s]")
    ylabel("Ampitude [a.u.]")
    legend({'frequency = 1Hz','frequency = 4Hz','frequency = 6Hz'},'Location','southwest')
end