% Within this script, implement the Nelder-Mead algorithmas discussed in 
% class. Use your algorithm to find the a minimum of 
% f(x,y) = ?(sin(x) + cos(y)). Have it return (output) the number of 
% iterations, N, it takes to achieve the specific error tolerance, tol, 
% that is inputted.
% Use the following 3 points as input: (x, y) = (0.35,2.8), 
% (x, y) = (?0.25,0.3), (x, y) = (1.5,0.5). Use the err for the 
% while-loop defined as follows: err = ???f(~x1)?f(~x3)??? = 
% = ???f(x1, y1)?f(x3, y3)???. 
% Note that local minima for this function occur when: 
% sin(x) = 1 and cos(y) = 1.

% NOTE: MY LAPTOP IS NOT EQUIPPED TO RUN THIS

function N = Nelder_Mead(tol)

x = [0.35 2.8; 4 4; 4.5 4.5];
func = [f(x(1),x(2)) f(x(3),x(4)) f(x(5),x(6))];
xm = [0 0];
xr = [0 0];
xc = [0 0];

err = 1;
N = 0;

while err > tol
    
    func = sort(func);
    
    xm(1) = 0.5*(x(1) + x(3));
    xm(2) = 0.5*(x(2) + x(4));
    
    xr(1) = xm(1) + (xm(1) - x(5));
    xr(2) = xm(2) + (xm(2) - x(6));
    
    if f(xr(1),xr(2)) < func(3)
        
        x(5) = xr(1);
        x(6) = xr(2);
    
    elseif f(xr(1),xr(2)) > func(3)
        
        xc(1) = 0.5*(xm(1) + x(5));
        xc(2) = 0.5*(xm(2) + x(6));
        
        if f(xc(1),xc(2)) < func(3)
            
            x(5) = xc(1);
            x(6) = xc(2);
            
        else
            
            x(3) = 0.5*(x(1) + x(3));
            x(4) = 0.5*(x(2) + x(4));
            x(5) = 0.5*(x(1) + x(5));
            x(6) = 0.5*(x(2) + x(6));
            
        end
    end
        
err = abs(f(x(1),x(2)) - f(x(5),x(6)));
N = N + 1;

end
end

function val = f(x,y)

val = -sin(x) - cos(y);

end

% a) my laptop cannot physically handle this code, but this seems to take a
% lot of iterations.
% b) this function should converge around f(x,y) = -1
% c) when x2 is altered, my laptop still cannot finish running this code,
% but it probably takes less time because its closer to (1,1) than the
% previous point.
% d) after change laptop overheated and shut down, probably took more
% iterations than either of the other two sets of initial points. algorithm
% probably finds a minima that is not -1, probably something less than -1.