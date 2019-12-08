% Estimate probability of rolling a 5.

function prob = estimate_Die_Probability(N)
% N: total number of dice rolls

count5 = 0;

for i = 1:N
    
    val = roll_Dice;
    
    if val == 5
        count5 = count5 + 1;
    end
    
end

prob = count5 / N;

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Rolls random die value.

function val = roll_Dice()

% Returns random number between 0 and 1.
roll = 6*rand();

val = ceil(roll);

end
