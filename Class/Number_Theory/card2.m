% Finds all n,m,k, k>0 for n! + n^k = m^2

function bro2 = card2()

n = 1:1:15;
k = 1:1:15;
a = 1;

for i = 1:length(n)
    
    for j = 1:length(k)
        
        m(j) = sqrt(factorial(n(i)) + n(i)^k(j));
        
        if m(j) == floor(m(j))
            
            A(a,:) = [n(i), m(i), k(i)];
            a = a + 1;
            
        end
    end
end

bro2 = A;

end