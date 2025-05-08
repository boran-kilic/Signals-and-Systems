clear
D = 22103444;
D4 = mod(D, 4);
M = 5 + D4; 
b = exp(-[0:M-1]); 
a = zeros(1, M); 
Ny = 11; 
x = [1 zeros(1, Ny-1)]; 
h = DTLTI(a, b, x, Ny);
nonzero_indices = find(h ~= 0);
nonzero_values = h(nonzero_indices);
coefficients = b(1:length(nonzero_values));
fprintf('Nonzero values of impulse response: ');
disp(nonzero_values);
fprintf('Coefficients: ');
disp(coefficients);
