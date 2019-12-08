% Algorithm
% f(x) = 0.5-xe^(-x^2)
% 1) Find 3 points x1, x2, x3 in [a,b]
% 2) Find parabola that goes through three points (need to write a linear
% system)
% 3) y = ax^2 + bx + c, vertex (= xMin) @ x = -b/2a
% 4) Redefine Points: x3 = x2, x2 = x1, x1 = xMin
% x1 = a + (1-T)(b-a)
% x2 = a + T(b-a)
% f1 = f(x1)
% f2 = f(x2)
% end
% if you have 3 xvalues, you know what their y values are.

x1 = 0;
x2 = 0.5;
x3 = 1.2;