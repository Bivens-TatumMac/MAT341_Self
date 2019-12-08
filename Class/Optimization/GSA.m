% Golden Search Algorithm
% N = # of iterations until tol.

function N = golden_Search(tol)
% N = 0;
% T = (root(5) - 1)/2
% x1 = a + (1 - T)(b - a)
% x2 = a + T(b - a)
% f1 = f(x1)
% f2 = f(x2)
% while b-a > tol
% N = N + 1
%   if f1>f2
%       a = x1
%   else
%       b = x2;
%   end
% x1 = a + (1-T)(b-a)
% x2 = a + T(b-a)
% f1 = f(x1)
% f2 = f(x2)
% end