function y = DTLTI(a, b, x, Ny)
 y = zeros(1, Ny);
 for n = 1:Ny
    for k = 1:length(b)
         if n- k+1 > 0
         y(n) = y(n) + b(k) * x(n-k+1);
         end
     end
     for l = 2:length(a)
         if n-l+1 > 0
         y(n) = y(n) + a(l) * y(n-l+1);
         end
     end
 end
end
