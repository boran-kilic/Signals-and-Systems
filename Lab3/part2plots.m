

figure;
plot(time,x);
xlabel("t");
ylabel("x(t)");
title("x(t) vs t");
grid on;
figure;
plot(time,y);
xlabel("t");
ylabel("y(t)");
title("y(t) vs t");
grid on;
Y=FT(y);
omega=linspace(-8192*pi,8192*pi,98305); 
omega=omega(1:98304);
H=ones(1,98304);
for i = 1:M
H = H + Ai(i)*exp(-1.0i*omega*ti(i));
end
h = IFT(H);
figure;


plot(time,h);
title("h(t) vs time");
xlabel("t");
ylabel("h(t)");
grid on;
figure;
plot(omega,abs(H));
title("|H(w)| vs w");
xlabel("w");
ylabel("|H(w)|");
grid on;
Xe = Y./H; 
xe = IFT(Xe);
soundsc(xe,8192);
figure
plot(time,xe);
title("xe(t) vs t");
xlabel("t");
ylabel("xe(t)");
grid on;
