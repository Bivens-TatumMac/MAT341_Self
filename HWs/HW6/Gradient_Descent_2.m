% Within this script, implement the Gradient Descent algorithm using the 
% Barzilai-Borwein step-size for gamma, as discussed in class .Use your 
% algorithm to find the a minimum of f(x,y) = ?(sin(x) + cos(y)). 
% Have it return (output) the number of iterations, N, it takes to achieve 
% the specific error tolerance, tol, that is inputted.

function N = Gradient_Descent_2(tol)

x = [1.0 1.5];
gamma = 0.5;
err = 1;
N = 0;

while err > tol
    
    xprev = x;
    x = x - gamma.*g(x);
    
    gamma = (transpose(x - xprev)*(g(x) - g(xprev)))/(transpose(g(x) - g(xprev))*(g(x) - g(xprev)));
    
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

% a) for tol = 1e-6, N = 5
% b) for tol = 1e-10, N = 6