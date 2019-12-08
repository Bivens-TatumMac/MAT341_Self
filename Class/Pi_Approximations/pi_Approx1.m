function val = pi_Approx1(N)

piVal = 0;

for i = 0:N
    piVal = piVal + (4*(((-1)^i))/((2*i)+1));
end

piVal