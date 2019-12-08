% Newton's Method:
% -roots of equations: f(x) = 0
% -use derivative to speed up convergence to a root
% guess xn
% y - f(xn) = m(x-xn), m = f'(xn)
% y - f(xn) = f'(xn)(x-xn), x(n+1) is the better guess
% -f(xn) = f'(xn)(x(n+1)-xn *solve for x(n+1)*
% -f(xn)/f'(xn) = x(n+1) - xn
% x(n+1) = xn - f(xn)/f'(xn)
% Calc Derivation: f(x) = 0
% f(xn+h) = f(xn) + f'(xn)h = 0, solve for h
% Note: initial guess, x0
% x(n+1) = xn + h
% x(n+1) = xn - f(xn)/f'(xn) (for roots)
% x(n+1) = xn - f'(xn)/f''(xn) (for minima)
%
% 2D: F->(x->) = [f(x,y); g(x,y)] = [0; 0]
% * derivation for looking at roots *
% guess at root: x->n = [xn; yn]
% next guess: xn+1-> = xn-> + h->, [xn+1; yn+1] = [xn; yn] + [h1; h2]
%
% Finding perturbative amoint h->: F->(xn->+h->) = [f(xn+h1,yn+h2);
% g(xn+h1,yn+h2)] =~ [f(xn,yn)+ (2f/2x)(xn,yn)h1 + (2f/2y)(xn,yn)h2;
% ; g(xn,yn) + (2g/2x)(xn,yn)h1 + (2g/2y)(xn,yn)h2] = [0; 0] ->
% (2f/2x)(xn,yn)h1 + (2f/2y)(xn,yn)h2 = -f(xn,yn)
% (2g/2x)(xn,yn)h1 + (2g/2y)(xn,yn)h2] = -g(xn,yn)
% [2f/2x 2f/2y; 2g/2x 2g/2y][h1; h2][xn; yn] = [-f(xn,yn); -g(xn,yn)]
% 
% J[F->]h-> (Jacobian of vector valued function F->) = F->(xn->) (function
% we are finding roots of)
% h-> = J^-1[F->]F->
% 
% Multivariable Newtons
% 1) Root-Finding: xn+1-> = [xn; yn] + [h1; h2] 
% xn+1-> = [xn;yn] - J^-1[f(xn,yn); g(xn,yn)]
% 2) Optimization: minf(x,y)
% want: gradient(f(x,y)) = 0, gradient(f(x,y)) = (2f/2x; 2f/2y)
% J[gradient(f)] = [2^2f/2x^2 2^2f/2x2y; 2^2f/2x2y 2^2f/2y^2] ->
% xn+1-> = xn-> - H^-1[f]gradient(f), *H is a hessian matrix*