% Unconstrained:
% Profit = revenue - cost.
% Want to find minimum of f(x)=f(x1,x2).
% 1) Take partial derivatives (gradient f(x)=(2f/2x1 2f/2x2)).
% 2) Set gradient equal to zero and solve for x1, x2.
% 3) Take all "second derivatives" (fx1x1 fx1x2, fx2x1 fx2x2).
% 4) Find eigenvalues of Hessian, H
%       a) If eigenvalues > 0, minimum.
%       b) If eigenvalues < 0, maximum.
%       c) If some >0, <0, saddle point.
% 
% Constrained: x1 + x2 = N
% P~(x1,x2,lambda) = P(x1,x2) + lambda(x1+x2-N)
% Proceed as above.
%
% Def: a function f:R->R is unimodal on [a,b] if there is a unique x*,
% where f(x*) is the minimum on [a,b] and for all x1,x2 in [a,b] with x1<x2
%   1) if x2<x*, then f(x1)>f(x2)
%   2) if x1>x*, then f(x1)<f(x2)
%
% If we know f(x1)>f(x2):
%   *minima is not to the left of x1*
% If we know f(x2)>f(x1)
%   *minima is not to the right of x2*
%
% err = b-a