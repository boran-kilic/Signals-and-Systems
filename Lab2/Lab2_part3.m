D11 = mod(22103444,11);
D5 = mod(22103444,5);
K = 20 + D11;
T = 2;
W = 1;
t= -5:0.001:5;
xt = FSWave(t,K,T,W);
k = -20:20;
real_xt = real(xt);
imag_xt = imag(xt);

figure
tiledlayout(1,2)

nexttile
plot(t,real_xt)
title("Real part of xt")
ylabel("Re[xt]")
xlabel("t")

nexttile
plot(t,imag_xt)
title("Imaginary part of xt")
ylabel("Im[xt]")
xlabel("t")