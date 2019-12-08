% Finds the min of function f(x) = 0.5-xe^-x^2 in an interval [0,2]
% Also called Golden Search Algorithm

function min = min_Search()

a = 0;
b = 2;

err = b - a;
tol = 10e-4;

while err > tol
    
    green = 0.4*(b-a);
    x1 = a + green;
    x2 = b - green;
    
    if f(x1) > f(x2)
        
        a = x1;
        
    else
        
        b = x2;
        
    end
    
    err = b - a;
    
end

min = (b + a)/2;

end

function val = f(x)

val = 0.5 - x*exp(-x^2);

end