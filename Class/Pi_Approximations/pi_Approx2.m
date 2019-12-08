function val = pi_Approx2(N)

piVal = 0;

for i = 0:N
    piVal = piVal + (3*(((-1)^i)*(((sqrt(3))^((2*i)+1))/((2*i)+1))));
end

piVal