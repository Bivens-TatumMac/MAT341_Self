% Conjugate Gradient to solve Ax=b
%
% symmetric: A = AT
% positive-definite: if x=/0, xTAx>0
%
% 1) Inner Products: <u,v> = uTv (a dot product)
% Define: <u,v>A = uTAv (A must be symmetric)
% Define: two pvectors (u,v) are conjugate of <u,v>A=0
% Fact: two (or more) vectors that are conjugate are linearly independent.
% Fact: if in R^n and we have n mutually conjugate vectors, those vectors
% form a basis in R^n.
%
% * Can create any vector we want out of a linear combination of those
% basis vectors *
% Call {P1,P2,...,Pn} our basis
% So call x* our solution to Ax=b (Ax*=b)
% x* = sumi=1->n(ciPi)
% Can find {ci}i=1->n if we know {Pj}j=1->n
% Ax* = Asumi=1->n(ciPi) = sumi=1->n(ciAPi)
% recall: <Pi,Pj>A = {0 since i=/j or >0 if i=j}
% PkTAx* = sumi=1->n(ciPkTAPi) = ck<Pk,Pk>vA
% ck = PkTA(xvA)/<Pk,Pk>vA but A(xvA) = b
% ck = PkTb/<Pk,Pk>vA
%
% How to Find {Pk}k=1->n
% Idea: iterate to get more basis vectors, after n-steps we have entire
% basis, at each step can compute better approximation to x* (solution to
% Ax=b)
% Define: r^k = b-Ax^k where x^k is kth approximation to x*
% Look at this problem: f(x) (x in R^n) = 0.5xTAx - xTb
% gradient(f(x)) = Ax-b = 0
% at kth iteration: gradient(f(x^k)) = Ax^k - b = -r^k
% (so for gradient descent: x^(k+1) = x^k -/+ak*gradient(f))
% Choose P0 = r^0 (all vectors {Pk}k=1->n will be based off r^0, which is
% based off the gradient, hence "conjugate gradient".
% But! We want to move in the direction of Pk at the kth iteration (not
% r^k). This is because all other vectors are conjugate to Pk.
% To enforce these two things contruct new basis vectors (next search
% direction) in terms of previous basis and current residual.
% Pk = rk - sumi<k(Pi<Pi,ri>vA / <Pi,Pi>vA)
% x^(k+1) = x^k + akPk
%
% (1) Define inner product:
% <u,v>A = aTAv
% (2) Find n-conjugate vectors in R^n
% {Px}k=1->n (basis in R^n)
% <Pk,Pj>A = {0 when j/=k, not zero when j=k
% (3) Write solution in basis
% Ax* = b
% x* = sumj=1->N(cjPj)
% (4) To find basis->iterate:
% P(k+1) = rk - sumi<k(Pi<Pi,ri>A/<Pi,Pi>A)
% Solve minimization problem for f(x) = 0.5xTAx-xTb
%% Note: gradient(f) = Ax-b
% rk = b - Axk = -gradient(f(xk))
%
% Gradient Descent: x(k+1) = xk - a*gradient(f(xk))
% x(k+1) = xk + ark
%
% Conjugate Gradient:
% x(k+1) = xk + akPk
% f(x(k+1) = f(xk+akPk) (ak is the scalar step-size)
% Find best ak through minimizing f.
% f(xk+akPk) = 0.5(xk+akPk)TA(xk+akPk) - (xk+akPk)Tb = 
% = 0.5[xkTA(xk+akPk) + akPkTA(xk+akPk)] - xkTb - akPkTb = 
% = 0.5[2akxkTAPk + ak^2PkTAPk] - xkTb - akPkTb =
% df/da = xkTAPk + akPkTAPk - PkTb = 0
% ak = (PkTb - xkTAPk)/(PkTAPk)