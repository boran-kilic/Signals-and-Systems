t=[0:1/8192:1];
%a=1737;
phi=0;
x=cos(2*pi*1737*[0:1/8192:1]+phi);
plot(t,x);
xlabel('t');
ylabel('x');
soundsc(x)
%% 

t=[0:1/8192:1];
a=1737;
phi=pi/4;
x=cos(2*pi*a*t+phi);
plot(t,x);
xlabel('t');
ylabel('x');
soundsc(x)
%% 

t=[0:1/8192:1];
a=1737;
phi=pi/2;
x=cos(2*pi*a*t+phi);
plot(t,x);
xlabel('t');
ylabel('x');
soundsc(x)
%% 

t=[0:1/8192:1];
a=1737;
phi=3*pi/4;
x=cos(2*pi*a*t+phi);
plot(t,x);
xlabel('t');
ylabel('x');
soundsc(x)
%% 

t=[0:1/8192:1];
a=1737;
phi=pi;
x=cos(2*pi*a*t+phi);
plot(t,x);
xlabel('t');
ylabel('x');
soundsc(x)