clear
% a = randi([2 6],1);
% Ts = 1/(25*a);
Ts=0.50;
dur=6;
t = -dur/2:Ts:dur/2-Ts; 

g=zeros(1,length(t));
g(-1<=t & t<0) = -2;
g(0<t & t<=1) = 3;

figure;
stem(t,g);
title("Stem of g(nTs)");
xlabel("n");
ylabel("g(nTs)");

figure;
gR1=DtoA(0,Ts,dur,g);
plot(linspace(-3,3,length(gR1)),gR1);
title("Zero Order Hold Reconstruction");
xlabel("n");
ylabel("gR1");

figure;
gR2=DtoA(1,Ts,dur,g);
plot(linspace(-3,3,length(gR2)),gR2);
title("Linear Reconstruction");
xlabel("t");
ylabel("gR2");

figure;
gR3=DtoA(2,Ts,dur,g);
plot(linspace(-3,3,length(gR3)),gR3);
title("Ideal Bandlimited Reconstruction");
xlabel("t");
ylabel("gR3");