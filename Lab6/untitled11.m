%% PART 3.g

w   = - pi:0.001:pi - 0.001;
H_w = (exp(1i*w) - (0.8 + 1i*0.6))./((exp(1i*w) - (0.617 + 1i*0.77)).*(exp(1i*w) - (0.70 + 1i*0.70)));
H_dB = 20*log10(abs(H_w));
figure;
tiledlayout(1, 1);
nexttile;
plot(w, abs(H_w));                               
title('Bode plot of H(jw)');
xlabel('frequency (w)');
ylabel('magnitude (dB)');
xlim([- pi, pi - 0.001]);


%% PART 3.h

a = [(0.70 + 1i*0.70) + (0.617 + 1i*0.772), - (0.70 + 1i*0.70)*(0.617 + 1i*0.772)];
b = [1, - (0.89 + 1i*0.45)];
t = 0:1/1400:1-1/1400;
x = exp(2i*pi*(((700 - (-700))/1)*(t.^2)/2 + (-700)*t));
y = DTLTI(a, b, x, 1400);
subplot(2, 3, 1);
plot(-pi:2*pi/1400:pi-1/1400, abs(y));
title('t in [0,1]');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([-pi, pi]);
subplot(2, 3, 4);
plot(-pi:2*pi/1400:pi-1/1400, angle(y));
title('t in [0,1]');
xlabel('Frequency (Hz)');
ylabel('Phase');
xlim([-pi, pi]);
t = 0:1/1400:10-1/1400;
x = exp(2i*pi*(((700 - (-700))/10)*(t.^2)/2 + (-700)*t));
y = DTLTI(a, b, x, 14000);
subplot(2, 3, 2);
plot(-pi:2*pi/14000:pi-1/14000, abs(y));
title('t in [0,10]');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([-pi, pi]);
subplot(2, 3, 5);
plot(-pi:2*pi/14000:pi-1/14000, angle(y));
title('t in [0,10]');
xlabel('Frequency (Hz)');
ylabel('Phase');
xlim([-pi, pi]);
t = 0:1/1400:1000-1/1400;
x = exp(2i*pi*(((700 - (-700))/1000)*(t.^2)/2 + (-700)*t));
y = DTLTI(a, b, x, 1400000);
subplot(2, 3, 3);
plot(-pi:2*pi/1400000:pi-1/1400000, abs(y));
title('t in [0,1000]');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([-pi, pi]);
subplot(2, 3, 6);
plot(-pi:2*pi/1400000:pi-1/1400000, angle(y));
title('t in [0,1000]');
xlabel('Frequency (Hz)');
ylabel('Phase');
xlim([-pi, pi]);


