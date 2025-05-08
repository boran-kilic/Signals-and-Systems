clear all
close all
D = 22103444; %my ID number
D4 = rem(D, 4); %D4 = 0
M = 5 + D4; % M = 5
omega = -pi:1/1000:pi-1/1000;
FTh = (1-exp(-M*(1i*omega+1)))./(1-exp(-(1i*omega+1)));
figure;
plot(omega,abs(FTh));
title({'$|\mathcal{H}(e^{j\omega})|$ vs Frequency (Hz)'},'Interpreter','latex');
xlim([-pi,pi]); xlabel('Frequency (Hz)','Interpreter','latex');
ylabel('$|\mathcal{H}(e^{j\omega})|$','Interpreter','latex');
