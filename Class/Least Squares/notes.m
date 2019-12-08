% Big Picture
%
% Least Squares: {(x1,yi)}i=1->N
% 1) Linear Least Squares: f(x:B) = sumj=0->M(Bjfj(x)) (linear dependence on B)
% Set up overconstrained linear system and pseudo inverse.
% 2) Non-Linear Least Squares: f(x:B) = B0sin(B1x)
% iterative method to find better "B" values.
%
% Interpolation: (going exactly through the data instead of "best fit")
%
% Operation Counts:
%
% 1) Dot Product:  
% x = (x1; x2; x3), xTx = x1^2 + x2^2 + x3^2 (5 total operations).
% x = (x1; x2;...; xn) in R^n, xTx = x1^2 + x2^2 +...+ xn^2 = sumj=1->n(xj^2)
% (n total multiplications, n-1 additions, 2n-1 operations)
% 2) Matrix Vector:
% [a11 a12 a13;...;a31 a32 a33](x1; x2; x3) = (dot product; ";") 3(5) ops
% [a11...a1n;...;an1...ann](x1;...;xn) = (dot product;...;") (2n-1)(n) ops
%
% 3) Matrix-Matrix
% [...a1T...;...;...a3T...][...;a1 a2 a3;...] =
% = [a1Ta1...a3Ta3;...a3Ta1...a3Ta3] 5 operations
% [...a1T...;...;...anT....][...;a1...an;...] = [...] n^2(2n-1) operations