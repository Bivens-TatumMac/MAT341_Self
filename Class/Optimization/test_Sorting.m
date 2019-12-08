% How to sort
% sort(): sorts least to greatest

function test_Sorting()

% x = [2 -3 1.7 5];

% [x_Sorted, indsVec] = sort(x);

% pick three pts between [0,2]
x1 = 1.2;
x2 = 0.3;
x3 = 1.8;

% make vector of points
xVec = [x1 x2 x3];

% make vector of function values
fVec = [f(x1) f(x2) f(x3)];

% sort
[fNew, indsVec] = sort(fVec);

xLeast = xVec(indsVec(1));
xMid = xVec(indsVec(2));
xGreat = xVec(indsVec(3));


end

function val = f(x)

val = 0.5 - x*exp(-x^2);

end