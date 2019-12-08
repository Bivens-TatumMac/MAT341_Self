% Finds all n,m pairs for n! + 1 = m^2

function bro = card()

n = 1:1:15;
a = 1;

for i = 1:length(n)
    
    m(i) = sqrt(factorial(n(i)) + 1);
    
    if m(i) == ceil(m(i))
        
        A(a,:) = [n(i), m(i)];
        a = a + 1;
        
    end
end

bro = A;

end