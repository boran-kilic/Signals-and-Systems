%myidnumber = 22103444
%mysection=1
Number = [4 4 4 3 1];
x=DTMFTRA(Number);
% soundsc(x,8192)
X=FT(x);
omega=linspace(-8192*pi,8192*pi,10241); 
omega=omega(1:10240);

figure
plot(omega,abs(X))
ylabel('|X|')
xlabel('w')
title('Magnitude of X versus w')

Ts = 1/8192;                              
t = 0:Ts:1.25-Ts; 

t_x1 = t -0.125;
rect1 = rectpuls(t_x1,25e-2);  
x1 = x.*rect1;
X1=FT(x1);
figure
plot(omega,abs(X1))
ylabel('|X1|')
xlabel('w')
title('Magnitude of X1 versus w')

figure 
tiledlayout(2,2)

t_x2 = t -(0.25*1+0.125);
rect2 = rectpuls(t_x2,25e-2);  
x2 = x.*rect2;
X2=FT(x2);
nexttile
plot(omega,abs(X2))
ylabel('|X2|')
xlabel('w')
title('Magnitude of X2 versus w')


t_x3 = t -(0.25*2+0.125);
rect2 = rectpuls(t_x3,25e-2);  
x3 = x.*rect2;
X3=FT(x3);
nexttile
plot(omega,abs(X3))
ylabel('|X3|')
xlabel('w')
title('Magnitude of X3 versus w')

t_x4 = t -(0.25*3+0.125);
rect2 = rectpuls(t_x4,25e-2);  
x4 = x.*rect2;
X4=FT(x4);
nexttile
plot(omega,abs(X4))
ylabel('|X4|')
xlabel('w')
title('Magnitude of X4 versus w')

t_x5 = t -(0.25*4+0.125);
rect2 = rectpuls(t_x5,25e-2);  
x5 = x.*rect2;
X5=FT(x5);
nexttile
plot(omega,abs(X5))
ylabel('|X5|')
xlabel('w')
title('Magnitude of X5 versus w')
