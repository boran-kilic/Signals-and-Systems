clear all
close all
omega = -pi:1/1000:pi-1/1000;
Fth = (exp(1i*omega) - (0.8 + 1i*0.6))./((exp(1i*omega) - (0.617 + 1i*0.77)) ...
    .*(exp(1i*omega) - (0.70 + 1i*0.70)));
figure;
plot(omega,abs(Fth));
title({'$|\mathcal{H}(e^{j\omega})|$ vs Frequency (Hz)'},'Interpreter','latex');
xlim([-pi,pi]); xlabel('Frequency (Hz)','Interpreter','latex');
ylabel('$|\mathcal{H}(e^{j\omega})|$','Interpreter','latex');