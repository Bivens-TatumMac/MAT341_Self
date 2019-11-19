% Within this script, implement the Gradient Descent algorithms discussed 
% in class. Use your algorithm to find the a minimum of 
% f(x,y) = ?(sin(x) + cos(y)). Have it return (output) the number of 
% iterations, N, it takes to achieve the specific error tolerance, tol, 
% and step-size, gamma, that are inputted.

function N = Gradient_Descent_1(tol,gamma)

x = [1.0; 1.5];
err = 1;
N = 0;

while err > tol
    
    xprev = x;
    x = x - gamma*g(x);
    err = sqrt(transpose(x - xprev)*(x - xprev));
    N = N + 1;
    
end

end

function val = f(x)

val = -sin(x) - cos(y);

end

function grad = g(x)

grad = [-cos(x(1)); sin(x(2))];

end

% (a) Using the initial point above, how many iterations does it take to 
% achieve 1e-10 accuracy using gamma = 0.5?
% N = 35
%
% (b) Using the initial point above, how many iterations does it take to 
% achieve 1e-10 accuracy using gamma = 0.9?
% N = 12
%
% (c) Using the initial point above, how many iterations does it take to 
% achieve 1e-10 accuracy using gamma = 1.5?
% N = 34