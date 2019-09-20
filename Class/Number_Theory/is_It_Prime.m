function is_It_Prime(N)

% prime number: only divisible by 1 and itself

% modular arithmetic
% mod(4, 2) = 4 mod 2

% must check inegers to sqrt(N) to see if prime.

% floor() rounds down
% ceil() rounds up

E = ceil(sqrt(N));
true = 0;

for i = 2:E
    if mod(N,i) == 0
        true = 1;
        break
    end
end
true