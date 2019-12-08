% Uses Newton's method to find min of f(x) = 0.5 - x*exp(-x^2) on [0,2]
% x0 = 0.25

function min = Newton_Method()

    a = 0;
    b = 2;
    xn = 0.25;
    xtemp = 0;
    err = 1;
    tol = 1e-4;

    while err > tol
        
        xtemp = xn;
        xn = xn - (fp(xn)/fpp(xn));
        err = abs(xtemp - xn);
        
    end
    
    min = xn;

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