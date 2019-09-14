% Computes the nth partial sum of the taylor series for e.

function val = e_Approx(N)

ePar = 0;

for i = 1:N
    ePar = ePar + (1/factorial(i-1));
end

ePar