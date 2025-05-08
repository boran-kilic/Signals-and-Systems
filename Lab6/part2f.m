clear all
close all
D = 22103444; %my ID number
D4 = rem(D, 4); %D4 = 0
M = 5 + D4; % M = 5
a = zeros(1, M); 
b = exp(-(0:M-1)); 
t = 0:1/1400:1-1/1400;
x = cos(2*pi*700*(t.^2)/2);
omega = linspace(0,pi,length(x));
y = DTLTI(a,b,x,length(x));
figure;
subplot(1,3,1);
plot(omega,abs(y));
title({'$0 < t < 1$'}, 'Interpreter', 'latex');
xlabel('$f$', 'Interpreter', 'latex');xlim([0,pi]);
ylabel('$y$', 'Interpreter', 'latex');
t = 0:1/1400:10-1/1400;
x = cos(2*pi*70*(t.^2)/2);
omega = linspace(0,pi,length(x));
y = DTLTI(a,b,x,length(x));
subplot(1,3,2);
plot(omega,abs(y));
title({'$0 < t < 10$'}, 'Interpreter', 'latex');
xlabel('$f$', 'Interpreter', 'latex');xlim([0,pi]);
ylabel('$y$', 'Interpreter', 'latex');
t = 0:1/1400:1000-1/1400;
x = cos(2*pi*0.7*(t.^2)/2);
omega = linspace(0,pi,length(x));
y = DTLTI(a,b,x,length(x));
subplot(1,3,3);
plot(omega,abs(y));
title({'$0 < t < 1000$'}, 'Interpreter', 'latex');
xlabel('$f$', 'Interpreter', 'latex');xlim([0,pi]);
ylabel('$y$', 'Interpreter', 'latex');


