function div_Vec = compute_Divisors(N)

index = 1;

for i = 1:N
    if mod(N,i) == 0
        div_Vec(index) = i;
        index = index + 1;
    end
end