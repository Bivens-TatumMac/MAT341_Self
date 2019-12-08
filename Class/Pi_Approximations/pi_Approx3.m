function val = pi_Approx3(N)

piVal = 0;

for i = 0:N
    piVal = piVal + (6*(-1^(i))*((1/(sqrt(3)))^((2*i)+1)*(1/((2*i)+1))));
end

piVal