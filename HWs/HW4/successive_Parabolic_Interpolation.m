% Write a script that takes in one input, tol, and returns the number 
% of iterations, N, necessary to achieve a certain error tolerance, tol.
% Within this script, implement the successive parabolic interpolation 
% algorithm with initial points x1= 0, x2= 0.6, and x3= 0.9. 
% Use your algorithm to find the minimum of f(x)=0.5?xe^(?x^2) within 
% the interval [0,2]. Have it return the number of iterations, N, 
% it takes to achieve the specific error tolerance, tol, that is inputted.

function N = successive_Parabolic_Interpolation(tol)

x1 = 0;
x2 = 0.6;
x3 = 1.2;

err = 1;
N = 0;

while err > tol
    
    A = [x1^2 x1 1; x2^2 x2 1; x3^2 x3 1];
    coeffs = inv(A)*[f(x1);f(x2);f(x3)];
    a = coeffs(1);
    b = coeffs(2);
    c = coeffs(3);
    vertex = -b/(2*a);
    x3 = x2;
    x2 = x1;
    x1 = vertex;
    err = abs(x3 - x1);
    N = N + 1;
    
end

end

function val = f(x)

val = 0.5 - x*exp(-x^2);

end

% a) for tol = 1e-8, N = 32
% b) when x3 = 2, N = 39 with no errors.