t = 0:0.001:1 ;
n = mod(22103444,41);
A = (3*rand(1,n)) + (3*rand(1,n)*1j);
omega = pi*rand(1,n);
xs = SUMCS(t,A,omega);
real_xs = real(xs);
imag_xs = imag(xs);
mgn_xs = abs(xs);
phase_xs = angle(xs);

%plot
figure
tiledlayout(2,2)

nexttile
plot(t,real_xs)
title("Real part of xs")
ylabel("Re[xs]")
xlabel("t")

nexttile
plot(t,imag_xs)
title("Imaginer part of xs")
ylabel("Im[xs]")
xlabel("t")

nexttile
plot(t,mgn_xs)
title("Magnitude of xs")
ylabel("Magnitude")
xlabel("t")

nexttile
plot(t,phase_xs)
title("Phase of xs")
ylabel("Phase")
xlabel("t")

