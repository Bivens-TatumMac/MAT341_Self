% Least Squares
% {(xi,yi)}(^n)(vi=1)
% y = f(x; B->) = 
% {B0 + B1x; B0 + B1x + B2x^2 + B3x^3; B0 + B1sinx + B2e^-x; B0sin(B1x + B2)}
% first three are linear, last one is nonlinear
%
% 1) f(x;B->) = sum(j = 1->m)Bj*naughtj(x) (linear least squares model)
% 2) for each data point (xi,yi), ri = yi - f(xi,B->)
%
% Problem: Given data {(xi,yi)}(^n)(vi=1), for a particular function
% f(x;B->), we want to find B-> such that we minimize 
% S = ||r->||(^2)(v2) = sum(j=1->n)rj^2
% f(x;B->) = B0 + B1
% f(x1,B->) = B0 + B1x1 = y1
% [1 x1;1 x2; ... 1 xn](B0; B1) = (y1; y2; ... yn)
% (overdetermined/overconstrained)
% AB-> = y->
% transpose(A)AB-> = transpose(A)y->
% (transpose(A)A)^-1*(transpose(A)A)B-> = (transpose(A)A)^-1*transpose(A)y->
% B-> = (transpose(A)A)^-1transpose(A)y->
% pseudo inverse: (transpose(A)A)^-1*transpose(A)
%
% Given: {(xi,yi)}i=1->N
% Goal: f(x,B->) = B0 + B1x
% THink: B-> = (transpose(A)A)^-1*transpose(A)*y-> gives least squares
% solution.
% Error: residual vector: r-> = y-> - AB->
% l^2-norm: ||r->||^2vz = sqrt(transpose(r->)r->) =
% transpose(y->-AB->)(y->-AB->) = transpose(y->)y-> - transpose(AB->)y-> -
% transpose(y->)AB-> + transpose(AB->)(AB->) = transpose(y->)y-> -
% transpose(B->)transpose(A)y-> - transpose(y)AB +
% transpose(B)transpose(A)AB
%
% gradientB||r->||^2v2 = grandientB(transpose(y)y -
% 2transpose(B)transpose(A)y + transpose(B)transpose(A)AB) = 0
% Spoiler: -2transpose(A)y + 2transpose(A)AB = 0
% transpose(A)AB  = transpose(A)y
% B = (transpose(A)A)^-1*transpose(A)y
%
% gradientB(-2transpose(B)transpose(A)y)
% gradient((B0 B1)[a11 a21; a12 a22](y1 y2)) = gradient((B0 B1)(a11y1 +
% a21y2; a12y1 + a22y2)) = gradient(B0(a11y1 + a21y2) + B1(a12y1 + a22y2)) =
% = (2/2B2[B0(a11y1 + a21y2) + B1(a12y1 + a22y2)]; 2/2B1[B0(a11y1 + a21y2)
% + B1(a12y1 + a22y2)]) = (a11y1 + a21y2; a12y1 + a22y2) = transpose(A)y
%
% (ATA)T = AT(AT)T = ATA
% let C = ATA - [c11 c12; c12 c22]
% (B0 B1)[c11 c12; c21 c22](B0 B1)
% gradientB((B0 B1)(c11B0 + c12B1; c12B0 + c22B1))
% gradientB(B0(c11B0 + c12B1) + B1(c12B0 + c22B1))
% gradientB(c11B0^2 + 2c12B0B1 + c22B1^2) = 
%(2/2B0(c11B0^2 + 2c12B0B1 + c22B1^2); 2/2B1(c11B0^2 + 2c12B0B1 + c22B1^2))
% = (2c11B0 + 2c12B1; 2c12B0 + 2c22B1) = 2CB = 2ATAB
%
% Non-Linear Least Squares: {(xi,yi)}i=1->N
%
% ex) f(x:B) = B0e^(-B1x^2)
%
% Residuals: r-> = y-> - f->(x:B)
% ri = yi - f(xi,B)
% minvB S = minvB sumi=1->N(ri^2) = minvB sumi=1->N(yi - f(xi,B))^2
%
% So to optimize:
% gradient(S) = 0, look at jth component of (gradient(S)):
% (gradient(S))j = 2/2Bj(sumi=1->N(yi - f(xi,B))^2) = 
% = sumi=1->N(2(yi - f(xi,B))2f/2Bj) = 0
%
% Iteration: find best B
% B^(k+1) = B^k (previous approx.) + gradient(B^k)
%
% Taylor Expand to find how much to step:
% Want: for each(xi,yi): yi = f(xi,B)
% What We Have: B^k ~= B (true value)
% at (x1,y1): f(x1,B) (true value) = f(x1,B^k) (approx value) +
% + 2f/2B1(x1,B)(B1 - B1^k) + 2f/2b2(xi,B)(B2 - B2^k) + ... +
% + 2f/2Bm(xi,B^*)(Bm - Bm^k)
%
% at (x2,y2): f(x2,B) (true value) = f(x2,B^k) (approx value) +
% + 2f/2B1(x2,B)(B1 - B1^k) + 2f/2b2(x2,B)(B2 - B2^k) + ... +
% + 2f/2Bm(x2,B^*)(Bm - Bm^k)
%
% (y1 - f(x1:B^k); y2 - f(x2:B^k); ... ; yn - f(xn:B^k)) = 
% = [2f/2B1(x1:B^k) 2f/2B2(x1:B^k) ... 2f/2Bm(x1:B^k); 2f/2B1(x2:B^k) 2f/2B2(x2:B^k ... 2/2Bm(x2,B^k);...]*
% *(B^k+1 - B1^k; B2^k+1 - B2^k; ...; Bm^k+1 - Bm^k)
%
% What We Do: B^(k+1) = B6k + (gradient(B))^k
% where we get (gradient(B))^k from J(gradient(B))^k = (gradient(y))^k
%
% ex) f(x:B) = B0e^(-(x-B1)^2/2B2^2)
% 1) iterative: B^0 = [1 0.5 0.25], tol - 1e-3, 
% err = 1 = ||B^(k+1) - B^k||v2
% while err > tol
% 1) form J
% 2) form gradient(y)^k
% 3) pseudo-inverse
% 3.5) B^(k+1) = B6k + gradient(b)^k
% 4) calculate error
% 5) reset B = B^(k+1) for next iteration
% end
%
% Forming J
% for i = 1:N
% x = xData(i)
% expy = exp(-(x1-B1)^2/(2B2^2))
% J(i,1) = expy;
% J(i,2) = B0*expy*(x - B1)/B2^2
% J(i,3) = B0*expy*((x - B1)^2/B2^3)