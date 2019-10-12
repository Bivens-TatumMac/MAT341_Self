% Determines probability of a coin landing fully within a square.
%
% Does N=1e5 seem like a reasonable amount of trials? Why or why not?
% This N is large enough, but may be too large.
%
% What makes this more difficult than the ?coin flip? case we did in class?
% The probability calculation is more calculated.
%
% For N = 1e5 trials for a coin of radius r = 0.1, prob = 0.8100

function prob = estimate_Coin_In_Square_Probability(r, N)

    for i = 1:N

        prob_Matrix(i) = (1-r)^2;
    
    end

    prob = sum(prob_Matrix)/N;
    
end