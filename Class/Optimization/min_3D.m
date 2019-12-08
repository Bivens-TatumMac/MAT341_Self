% Finds min of f(x,y) = -(sinx + cosy)
% Nelder-Mead: 
% R^2 implementation: min f: R^2 -> R
%   pick three points: x1->=[x1 y1], x2->=[x2 y2],x3->=[x3 y3]
%   order points by function evals from smallest to largest
%   f(x1->~)<=f(x2->~)<=f(x3->~)
%   smallest is best point (f(x1*~)) largest is worst
% Algorithm:
%   1) pick 3 points xi->= <xi,yi> i = 1,2,3
%   2) reorder pts so that f(x1->~)<=f(x2->~)<=f(x3->~)
%   3) compute midpoint vector btwn x1-> and x2->,xm->= 0.5(x1-> + x2->)
%   4) compute a "reach vector", xR->=xm-> + (xm-> - x3->)
%   5) Transformation Step: 
%      if f(xR->)<f(x3->) 
%      x3-> = xR->;
%      Go back to step 2 and repeat.
%      elseif f(xR->)>=f(x3->)
%      xc-> = 0.5(xm-> + x3->);
%      if f(xc->) < f(x3->)
%      set x3-> = xc-> and go back to step 2 and repeat.
%      else
%      *shrink triangle in direction x1->*
%      x2-> = 0.5(x1->+x2->);
%      x3-> = 0.5(x1->+x3->);
%      end end

function min = min_3D()