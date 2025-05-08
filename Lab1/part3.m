
% a=1737;
x4=cos(pi*1737*[0:1/8192:1].^2);
plot(t,x4);
xlabel('t');
ylabel('x4');
soundsc(x4)
%% 

t=[0:1/8192:1];
a=1737;
x4=cos(pi*(a/2)*t.^2);
plot(t,x4);
xlabel('t');
ylabel('x4');
soundsc(x4)
%% 

t=[0:1/8192:1];
a=1737;
x4=cos(pi*2*a*t.^2);
plot(t,x4);
xlabel('t');
ylabel('x4');
soundsc(x4)
%% 

t=[0:1/8192:2];
x5=cos(2*pi*(-500*[0:1/8192:2].^2 +1600*[0:1/8192:2]));
plot(t,x5);
xlabel('t');
ylabel('x5');
soundsc(x5)