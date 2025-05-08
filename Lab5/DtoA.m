function xR=DtoA(type,Ts,dur,Xn)
dur =dur*Ts;
p=generateInterp(type,Ts,dur);
N = length(Xn);
len_xR = floor(length(p)*(1+(N-1)*Ts/dur));
tot = floor(len_xR/(N-1+dur/Ts));
t = linspace(-(dur+(N-1)*Ts)/2,(dur+(N-1)*Ts)/2,len_xR);
xR=zeros(1,len_xR);
for n = 0:N-1
xR(tot*n+1:tot*n+length(p)) = xR(tot*n+1:tot*n+length(p))+Xn(n+1)*p;
end
end

% function xR=DtoA(type,Ts,dur,Xn)
% Tf=Ts/500;
% N=length(Xn);
% p=generateInterp(type,Ts,dur*Ts);
% xR=zeros(1,round((dur+N-1)*Ts/Tf));
% for n=0:N-1
% xR(1+round(n*Ts/Tf):round((dur+n)*Ts/Tf))=xR(1+round(n*Ts/Tf):round((dur+n)*Ts/Tf))+Xn(n+1)*p;
% end
% end