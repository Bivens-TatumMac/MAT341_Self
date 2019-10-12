% Finds lowest common multiple for two numbers.

% Step 1: Find GCD(x,y)
% Step 2: Find x*y
% STep 3: x*y/GCD(x,y)

function lcm_val = calculate_LCM(x, y)

gcd = 0;

if x>y
    N = y;
else
    N = x;
end

for i = 1:N
    if mod(x,i) == 0 && mod(y,i) == 0
        gcd = i;
    end
end


lcm_val = (x*y)/gcd;

end
        
        