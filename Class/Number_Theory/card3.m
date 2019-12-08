% Finds all n,m,k,g k,g>0 for n! + n^k = m^j

function bro3 = card3()

n = 1:1:15;
k = 1:1:15;
g = 1:1:10;
a = 1;

for i = 1:length(n)
    
    for j = 1:length(k)
        
        for m = 1:length(g)
            
            m(j) = (factorial(n(i)) + (n(i)^k(m)))^(1/g(j));
            
            if m(j) == ceil(m(j))
                
                A(a,:) = [n(i), m(i), k(i), g(i)];
                a = a + 1;
                
            end
        end
    end
end

bro3 = A;

end