function [xt] = FSWave(t,K,T,W)
    Xk = zeros(1,2*K+1);
    omega = zeros(1,2*K+1);
    for k = -K:K
        fun = @(t) (1-t.^2).*exp(1j.*2*pi*k.*t).*(abs(t)<W/2);
        Xk(k+K+1) = (1/T)*(integral(fun,-T/2,T/2));
%       Xk(k+K+1) = (1/T)*(integral(@(x) (1-x.^2).*exp(1j.*2*pi*k.*x).*(abs(x)<W/2),-T/2,T/2));
        
    omega(k+K+1) = 2*pi*k/T;
    end
    xt = SUMCS(t,Xk,omega);
%     xt = Xk;
end

function [xt] = FSWave(t,K,T,W)
    Xk = zeros(1,2*K+1);
    a = [-K:K]*2*pi/T;
    X0 = (1/T)*(W-W^3/6);
    for k = -K:K
        if k == 0
            Xk(K+1) = X0;
        else
            Xk(k+K+1) = (1/T)*(((2-W^2)/(pi*k) + (T^2)/(pi^3*k^3))*sin((pi*W*k)/T) - ((W*T)/(pi^2*k^2))*cos((pi*W*k)/T));
        end
    end
    x1 = SUMCS(t,Xk(K+2:2*K+1),a(K+2:2*K+1)); % K+2 corresponds to the first positive index.
    x2 = SUMCS(t,Xk(1:K),a(1:K));
    xt = X0 + x1 + x2;
    xt = Xk;
end

function [xt] = FSWave(t,K,T,W)
    xk = zeros(1,2*K+1);
    omega = zeros(1,2*K+1);
    for k = -K:K
        if k == 0
            xk(K+1) = (1/T)*(W-W^3/6); %X0
        else
            xk(k+K+1) = ((2-W^2)/(pi*k) + (T^2)/(pi^3*k^3))*sin((pi*W*k)/T) ...
                - ((W*T)/(pi^2*k^2))*cos((pi*W*k)/T);
        end
    omega(k+K+1) = 2*pi*k/T;
    end
    xt = SUMCS(t,xk,omega);
end