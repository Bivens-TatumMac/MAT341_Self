function val = compute_gcd(x,y)

if x>y
    N = y;
else
    N = x;
end

for i = 1:N
    if mod(x,i) == 0 && mod(y,i) == 0
        val = i;
    end
end