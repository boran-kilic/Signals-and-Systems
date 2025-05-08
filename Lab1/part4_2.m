t=[0:1/8192:1];
a=1737;
phi=0;
x=cos(2*pi*a*t+phi);
plot(t,x);
soundsc(x)