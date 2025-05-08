clear all
close all
a = [(0.70 + 1i*0.70) + (0.617 + 1i*0.772), - (0.70 + 1i*0.70)*(0.617 + 1i*0.772)];
b = [1, - (0.80 + 1i*0.60)];

t = 0:1/1400:1-1/1400;
x1 = exp(2i*pi*(1400*(t.^2)/2-700*t));
y = DTLTI(a,b,x1,length(x1));
figure;
subplot(1,3,1);
omega = linspace(-pi,pi,length(x1));
plot(omega,flip(abs(y)));
title({'$0 < t < 1$'}, 'Interpreter', 'latex');
xlabel('$f$', 'Interpreter', 'latex');xlim([-pi,pi]);
ylabel('$y$', 'Interpreter', 'latex');

t = 0:1/1400:10-1/1400;
x2 = exp(2i*pi*(140*(t.^2)/2-700*t));
omega = linspace(-pi,pi,length(x2));
y = DTLTI(a,b,x2,length(x2));
subplot(1,3,2);
plot(omega,flip(abs(y)));
title({'$0 < t < 10$'}, 'Interpreter', 'latex');
xlabel('$f$', 'Interpreter', 'latex');xlim([-pi,pi]);
ylabel('$y$', 'Interpreter', 'latex');

t = 0:1/1400:1000-1/1400;
x3 = exp(2i*pi*(1.4*(t.^2)/2-700*t));
omega = linspace(-pi,pi,length(x3));
y = DTLTI(a,b,x3,length(x3));
subplot(1,3,3);
plot(omega,flip(abs(y)));
title({'$0 < t < 1000$'}, 'Interpreter', 'latex');
xlabel('$f$', 'Interpreter', 'latex');xlim([-pi,pi]);
ylabel('$y$', 'Interpreter', 'latex');

figure;
subplot(1,3,1);
omega = linspace(-pi,pi,length(x1));
plot(omega,x1);
title({'$0 < t < 1$'}, 'Interpreter', 'latex');
xlabel('$f$', 'Interpreter', 'latex');xlim([-pi,pi]);
ylabel('$x$', 'Interpreter', 'latex');

subplot(1,3,2);
omega = linspace(-pi,pi,length(x2));
plot(omega,x2);
title({'$0 < t < 10$'}, 'Interpreter', 'latex');
xlabel('$f$', 'Interpreter', 'latex');xlim([-pi,pi]);
ylabel('$x$', 'Interpreter', 'latex');

subplot(1,3,3);
omega = linspace(-pi,pi,length(x3));
plot(omega,x3);
title({'$0 < t < 1000$'}, 'Interpreter', 'latex');
xlabel('$f$', 'Interpreter', 'latex');xlim([-pi,pi]);
ylabel('$x$', 'Interpreter', 'latex');