function calculate_Pi_Sums()

tol = 10^(-2);
err = 1;
an = 0;
bn = 0;
A = 0;
B = 0;

while err > tol
    for i = 0:A
        an = an + ((6 * (-1)^i) / (sqrt(3) * (3^i) * ((2 * i) + 1)));
        A = A + 1;
        err = abs(an - pi);
    end
end
    
err = 1;

while err > tol
    
    for i = 0:B
        bn = bn + (((16 * (-1)^i) / (5^((2 * i) + 1) * ((2 * i) + 1))) - ((4 * (-1^i)) / (239^((2 * i) + 1) * ((2 * i) + 1))));       
    end
    
    B = B + 1;
    err = abs(bn - pi);
end

A
B