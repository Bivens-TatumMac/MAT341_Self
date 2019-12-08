% Gradient Descent: finds min for f:R^n -> R
%
% xn+1-> = xn-> + h->
% gradient(f) = max rate of change
% +gradient(f) -> move up a mountain
% -gradient(f) -> moving down towards a valley
%
% xn+1 = xn - gamma(n)gradient(f(x->)), 
% gamma(n) = step size for nth iteration
%
% Borzlai-Borweir Step-Size:
% gamma(n) = |(xn-> - xn-1->)^T (gradient(f(xn->)) - gradient(f(xn-1->)))|
% / ||gradient(f(xn->)) - gradient(f(xn-1->))||v2