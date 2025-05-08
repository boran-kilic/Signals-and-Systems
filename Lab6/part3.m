%Part 3
%ID = 22103444
n2 = 2+2;
n3 = 2+1;
n1 = 2+2;
n5 = 2+3;
n8 = 2+4;
n6 = 2+4;

z1 = (n2+1i*n3)/(sqrt(n2^2+n3^2));
p1 = (n1+1i*n5)/(sqrt(1+n1^2+n5^2));
p2 = (n8+1i*n6)/(sqrt(1+n8^2+n6^2));

%part g
w = [-pi:1/1000:pi-1/1000];
Hfourier = (1-z1*exp(-1i*w))./((1-p1*exp(-1i*w)).*(1-p2*exp(-1i*w)));
figure;
plot(w,abs(Hfourier));
title('Magnitude Response');
ylabel('Magnitude');
xlabel('Frequency (Hz)');
xlim([-pi,pi]);


%part h
a = [(p1+p2), -p1*p2];
b = [1,-z1];

chirpp1 = chirpCalculator2(-500,500,1,1000);
omegas1 = linspace(-pi,pi,length(chirpp1));
output1 = DTLTI(a,b,chirpp1,length(chirpp1));
subplot(2,2,1);
plot(omegas1,abs(output1));
title('Magnitude Response for t = 1 [-500,500] Hz');
ylabel('Magnitude')
xlabel('Frequency (Hz)')
xlim([-pi,pi]);
subplot(2,2,3);
plot(omegas1,angle(output1));
title('Phase Response for t = 1');
ylabel('Phase Angle')
xlabel('Frequency (Hz)')
xlim([-pi,pi]);

chirpp2 = chirpCalculator2(-400,600,1,600);
omegas2 = linspace(-pi,pi,length(chirpp2));
output2 = DTLTI(a,b,chirpp2,length(chirpp2));
subplot(2,2,2);
plot(omegas2,abs(output2));
title('Magnitude Response for t = 1 [-400,600] Hz');
ylabel('Magnitude')
xlabel('Frequency (Hz)')
xlim([-pi,pi]);
subplot(2,2,4);
plot(omegas2,angle(output2));
title('Phase Response for t = 1');
ylabel('Phase Angle')
xlabel('Frequency (Hz)')
xlim([-pi,pi]);


function [x] = chirpCalculator2(f0,f_end, t_end, fs)
    t = [0:1/fs:t_end-1/fs];
    k = (f_end-f0)/t_end;
    x = exp(2i*pi*(k*(t.^2)/2 + f0*t));
end