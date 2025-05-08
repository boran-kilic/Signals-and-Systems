clear all
close all
D = 22103444; %my ID number
D4 = rem(D, 4); %D4 = 0
M = 5 + D4; % M = 5
Ny = 11;
a = zeros(1, M); 
b = exp(-(0:M-1)); 
n = 0:Ny-1;
x = [1 zeros(1, Ny-1)]; 
h = DTLTI(a, b, x, Ny);
figure;
stem(n, h);
xlabel('n');ylabel('h[n]');