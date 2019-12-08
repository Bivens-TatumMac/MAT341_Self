% Plots Prob of real roots vs length

function coeffs_Two()

L_Vec = [1e-3:0.5e-3:9e-3  1e-2:0.5e-2:9e-2  1e-1:0.5e-1:9e-1  1e0:0.5e0:10];

for i = 1:length(L_Vec)
    
    prob(i) = coeffs(2.5e4,L_Vec(i));
    
end


semilogx(prob,L_Vec);

end