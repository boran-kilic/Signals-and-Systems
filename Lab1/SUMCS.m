function [xs] = SUMCS(t,A,omega) 
    xs = zeros(size(t));  
    for i = 1 : length(A) 
        xs = xs + A(i)*exp(1j*omega(i)*t);
    end 
end