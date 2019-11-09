% Within this script, implement the Multivariable Newton?s Method to find 
% a local minimum (NOT A ROOT) with initial guess x1 = (x1, y1) = 
% = (?0.25,0.25). Use your algorithm to find a minimum of 
% f(x, y) = ?(sin(x) + cos(y)). Have it return (output) the number of 
% iterations, N, it takes to achieve the specific error tolerance, tol, 
% that is inputted. Use a tolerance of tol=1e?8 and define your error to 
% be the l2-error, e.g., err=?(~xn+1?~xn)T(~xn+1?~xn).

function N = Newtons_2D_Opt(tol)

xn = [-4.5 4.5];
xtemp = [];
func = f(xn(1),xn(2));
grad = [0; 0];
hess = [0 0;0 0];
    
N = 0;
err = 1;

while err > tol

    xtemp = xn;
   
    grad = gradient(func);
    hess = jacobian(gradient(func));
   
    xn = xn - (hess.^-1)*grad;
    func = f(xn(1),xn(2));
        
    err = sqrt(transpose(xn - xtemp)*(xn - xtemp));
    N = N + 1;
    
end
end

function val = f(x,y)

val = -(sin(x) + cos(y));

end

% a) for tol = 1e-8, N = 15, and the min found was about -1.
% b) for x1 = [-4.5 4.5], the program sent back an error.