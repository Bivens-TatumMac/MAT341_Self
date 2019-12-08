function N = gradDesc()

x = [1; 1.5];
err = 1;
tol = 1e-8;
gam = 0.5;
N = 0;

while err > tol
    
    xprev = x;
    x = x - gam*g(x);
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