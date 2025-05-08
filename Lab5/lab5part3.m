clear
dur = rem(22103444,7); %dur=6
Ts= dur/5;
t=-dur/2:Ts/500:dur/2-Ts/500;

%zero order hold 
pz = generateInterp(0,Ts,dur);
figure;
plot(t,pz);
title("Zero Order Hold Interpolation");
xlabel("t");
ylabel("pZ(t)");

%linear
pl = generateInterp(1,Ts,dur);
figure;
plot(t,pl);
title("Linear Interpolation");
xlabel("t");
ylabel("pL(t)");

%ideal bandlimited
pI = generateInterp(2,Ts,dur);
figure;
plot(t,pI);
title("Ideal Bandlimited Interpolation");
xlabel("t");
ylabel("pI(t)");

