function smallestInt()

err = 1;
N = -1;

while err > 0.00001
    
    N = N + 1;
    sum1 = 0;
    
    for J = 1 : (N - 1)^2
        sum1 = sum1 + (N - 1)/((N - 1)^2 + J^2);
    end
    
    sum2 = 0;
    
    for J = 1:N^2
        sum2 = sum2 + N/(N^2 + J^2);
    end
    
    err = abs(sum1 - sum2);
    
end

N