% Check the probability of a coin landing in a square for various radii
%
% Approximately what values of r give estimated probabilities 
% of 0.5, 0.1, and 0.01?
% 0.5: 0.5, 0.1: 0.9, 0.01: 0.99
%
% Assume N = 1e5.

function vary_Radii_Plot()

rVec = [0.01:0.005:0.10  0.1:0.01:0.5];
N = 1e5;

    for i = 1:N
        
        for j = 1:length(rVec)
            
            prob_Matrix(j) = (1 - rVec(j));
            
        end
        
    end
    
    plot(rVec, prob_Matrix, 'r*');
    xlabel('Radius');
    ylabel('Probability');
    
end
           