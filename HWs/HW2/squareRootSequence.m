function val = squareRootSequence(m,n)

val = m;

for i = 1:n
    val = sqrt(m + (((-1)^(i-1)) * val));
end

% m = 13: lim = 3
% m = 31: lim = 5
% m = 43: lim = 6