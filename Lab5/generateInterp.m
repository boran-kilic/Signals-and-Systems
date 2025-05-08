function p = generateInterp(type,Ts,dur)
 t=-dur/2:Ts/500:dur/2-Ts/500;
 p=zeros(1,length(t));
 if type == 0
 p(-Ts/2 <= t & t < Ts/2-Ts/500)=1;
 elseif type == 1
 p(-Ts/2 <= t & t <= Ts/2) = 1-2*abs(t(-Ts/2 <= t & t <= Ts/2))/Ts;
 elseif type == 2
 p=sin(pi*t/Ts)./(pi*t/Ts);
 p(t==0)=1;
 end
end