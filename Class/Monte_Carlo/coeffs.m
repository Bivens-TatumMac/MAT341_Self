% Find probability of a 2nd order polynomial having real roots.

function prob = coeffs(N,L)

count = 0;

for i = 1:N
    
    C = ((2*L)*rand(3,1)) - L;
    R = roots(C);
    temp_count = 0;
    
    for j = 1:length(R)
        
        if imag(R(j)) == 0
            
            temp_count = temp_count + 1;
        
        end
        
        if temp_count == length(C) - 1
            
            count = count + 1;
            
        end
    end
end

prob = count/N;

end