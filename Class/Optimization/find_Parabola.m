% Finds parabola to find min of function  0.5 - x*exp(-x^2) pn [0,2].
% Succesive Parabolic Interpolation

function min = find_Parabola

x1 = 0;
x2 = 0.5;
x3 = 1.2;

err = 1;
tol = 1e-4;

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
    
end

min = vertex;

end

function val = f(x)

val = 0.5 - x*exp(-x^2);

end