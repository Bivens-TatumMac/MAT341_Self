% Within this script, implement Newton?s Method to find alocal minimum 
% (NOT A ROOT) with initial guess x1= 0.25. Use your algorithm to find the 
% minimum of f(x)=0.5?xe^?x^2 within the interval [0,2]. Have it return 
% (output) the number of iterations, N, it takes to achieve the specific 
% error tolerance, tol, that is inputted.

function N = Newtons_1D_Opt(tol)

a = 0;
b = 2;

xn = 0.25;
xtemp = 0;

err = 1;
N = 0;

while err > tol
    
    xtemp = xn;
    xn = xn - (fp(xn)/fpp(xn));
    err = abs(xtemp - xn);
    N = N + 1;
    
end
end

function val = f(x)

    val = 0.5 - x*exp(-x^2);

end

function val2 = fp(x)

    val2 = (2*(x^2)*exp(-x^2)) - exp(-x^2);
    
end

function val3 = fpp(x)
    
    val3 = (-4*(x^3)*exp(-x^2)) + (6*x*exp(-x^2));
    
end

% a) for tol = 1e-8, N = 6
% b) when x1 = 1.5, N = 736, so the number of iterations drastically
% increased.