%part 3 of the lab

% z1=(4+2j)/sqrt(20);
% p1=(4+4j)/sqrt(33);
% p2=(3+10j)/sqrt(110);

n2 = 2+2;
n3 = 2+1;
n1 = 2+2;
n5 = 2+3;
n8 = 2+4;
n6 = 2+4;

z1 = (n2+1i*n3)/(sqrt(n2^2+n3^2));
p1 = (n1+1i*n5)/(sqrt(1+n1^2+n5^2));
p2 = (n8+1i*n6)/(sqrt(1+n8^2+n6^2));
%%
% H_z=@(z) (z-z1)/((z-p1)*(z-p2));
j=sqrt(-1);
%again, we need to transfor z to e^jw in unit circle
H_ejw=@(w) (exp(j*w)-z1)./((exp(j*w)-p1).*(exp(j*w)-p2));

w=-pi:pi/1000:pi;
magH=abs(H_ejw(w));
figure (6)
plot(w,magH)
%%
fS = 1400;  
t = 0:1/fS:1;  
k1 = 700;
f0=-700;
a=[p1+p2 -p1*p2];
b=[0 1 -z1];
x=exp((1i*2*pi*(k1.*t.^2-700*t))/2);
%  x=exp(1i*2*pi*((f0.*t)+(k1.*t.^2))/2); 
y = DTLTI(a, b, x, length(t)); 
  freq=-pi:2*pi/length(y):pi-2*pi/length(y);


figure(7)
plot(freq,abs(y))
figure (8)
plot(freq,angle(y))

% 
t=0:1/fS:10;
k1=70;
 x=exp(1i*2*pi*((f0.*t)+(k1.*t.^2))/2);  
  
y = DTLTI(a, b, x, length(t)); 
   freq=-pi:2*pi/length(y):pi-2*pi/length(y);
figure(9)
plot(freq,abs(y))
figure (10)
plot(freq,angle(y))


%

t=0:1/fS:1000;
k1=0.7;
 x=exp(1i*2*pi*((f0.*t)+(k1.*t.^2))/2);  
  
y = DTLTI(a, b, x, length(t)); 
   freq=-pi:2*pi/length(y):pi-2*pi/length(y);
figure(11)
plot(freq,abs(y))
figure (12)
plot(freq,angle(y))