clear
% D7 = rem(22103444,7);
% % Ts =0.25+ 0.01*D7;
% % Ts = 0.099;
% Ts = 0.005*(D7+1);
% dur = rem(22103444,7);
% ta=-dur/2:Ts/1000:dur/2-Ts/1000; %analog (continous-time) signal
% td=-dur/2:Ts:dur/2-Ts;%digital (discrete-time) signal
% xa=0.25*cos(2*pi*3*ta+pi/8)+0.4*cos(2*pi*5*ta-1.2)+0.9*cos(2*pi*ta+pi/4);
% xd=0.25*cos(2*pi*3*td+pi/8)+0.4*cos(2*pi*5*td-1.2)+0.9*cos(2*pi*td+pi/4);
% 
% figure;
% plot(ta,xa,'r');
% title("x(t) and x(nTs)");
% xlabel("time (s)");
% ylabel("x(t) and x(nTs)");
% hold on;
% stem(td,xd,'b');
% hold off;
% 
% figure;
% xR1=DtoA(0,Ts,dur,xd);
% plot(linspace(-dur/2,dur/2,length(xR1)),xR1);
% title("Zero Order Hold Interpolation");
% xlabel("time (s)");
% ylabel("xR(t)");
% 
% figure;
% xR2=DtoA(1,Ts,dur,xd);
% plot(linspace(-dur/2,dur/2,length(xR2)),xR2);
% title("Linear Interpolation Interpolation");
% xlabel("time (s)");
% ylabel("xR(t)");
% 
% figure;
% xR3=DtoA(2,Ts,dur,xd);
% plot(linspace(-dur/2,dur/2,length(xR3)),xR3);
% title("Bandlimited Interpolation");
% xlabel("time (s)");
% ylabel("xR(t)");

D7=rem(22002861,7); % =6
% Ts=0.005*(D7+1); % I will change this value for each part
% Ts=0.25+0.01*D7;
% Ts=0.18+0.005*(D7+1);
Ts=0.15;
Tf= Ts/500;
dur = 4; % -2<t<2
t= -dur/2:Tf:dur/2-Tf;%analog time
sdt=-dur/2:Ts:dur/2-Ts;%sampled discrete tf
sampledxt=0.25*cos(2*pi*3*sdt+pi/8)+0.4*cos(2*pi*5*sdt-1.2)+0.9*cos(2*pi*sdt+pi/4);
xt=0.25*cos(2*pi*3*t+pi/8)+0.4*cos(2*pi*5*t-1.2)+0.9*cos(2*pi*t+pi/4);
figure(8),plot(t,xt,'r'),title('xt and x(nTs)'),xlabel('t'),ylabel('xt x(nTs)'),hold on
stem(sdt,sampledxt,'b')
hold off
% 
%a)
xRe0= DtoA(0,Ts,dur,sampledxt);
tr0=linspace(-2,2,length(xRe0));
figure (10) , plot(tr0,xRe0),title('Zero Order Hold Interpolation'),xlabel('t'),ylabel('xR(t)')
xRe1= DtoA(1,Ts,dur,sampledxt);
tr1=linspace(-2,2,length(xRe1));
figure (11) , plot(tr1,xRe1),title('Linear Interpolation'),xlabel('t'),ylabel('xR(t)')
xRe2= DtoA(2,Ts,dur,sampledxt);
tr2=linspace(-2,2,length(xRe2));
figure (12), plot(tr2,xRe2),title('Bandlimited Interpolation'),xlabel('t'),ylabel('xR(t)')






