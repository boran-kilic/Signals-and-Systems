M=6;
Ai=[0.65 0.50 0.30 0.22 0.15,0.1];
t = [0:1/8192:12-1/8192];
ti=[0.25 0.75 1 1.25 2 3.25];
echo = zeros(1,98304);
for i = 1:M
    for m = t
     if m>=ti(i)
        echo(m*8192+1) = echo(m*8192+1) + Ai(i)*x((m-ti(i))*8192 +1);
     end
    end
end
y = echo + x;
soundsc(y,8192);