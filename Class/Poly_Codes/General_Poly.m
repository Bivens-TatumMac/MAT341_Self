% Returns value of a general polynomial evaluated at x.

function val = General_Poly(cVec,x)

N = length(cVec);
val = 0;

for i = 1:N
    val = val + (cVec(i)*(x^(i-1)));
end