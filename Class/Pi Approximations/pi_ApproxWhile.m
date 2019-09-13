function pi_ApproxWhile(N)

tol = 10^(-4);
err = 1;
sum = 0;
N = 0;

while err > tol
    
    % initiliaze to 0, so not adding sum to new approx.
    sum = 0;
    
    % find pi to approx.
    for i = 0:N
        sum = sum + ((4 * (-1)^i) / (2*i + 1));
    end
    
    N = N + 1;
    err = abs(sum - pi);
end

N