tstart = tic;
step = 0.01;
result = [1]; 
N = (2-1)/0.01;
value = 1;
a = zeros(1, N+1);
for i = 1:N 
    value = value + step;
    result = [result, value];
end
firstt = toc(tstart);