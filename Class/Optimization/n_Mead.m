% Uses Nelder Mead to find min of f(x) = 0.5 - x*exp(-x^2) in [-1,5]x[1,5]
% err = abs(f(x3->) - f(x1->))

function min = n_Mead()

x1 = -1;
x2 = 0.7;
x3 = 5;
y1 = 1;
y2 = 3;
y3 = 5;
x = 0;
y = 0;


err = 1;
tol = 1e-8;
xm = 0;
xr = 0;
xc = 0;
ym = 0;
yr = 0;
yc = 0;

while err > tol
    
    if f(x1,y1) > f(x2,y2)
        
        if f(x1,y1) > f(x3,y3)
            
            x = x3;
            x3 = x1;
            x1 = x2;
            x2 = x;
            y = y3;
            y3 = y1;
            y1 = y2;
            y2 = y;
            
        else
            
            x = x2;
            x2 = x1;
            x1 = x;
            y = y2;
            y2 = y1;
            y1 = y;
            
        end
        
    elseif f(x2,y2) > f(x3,y3)
        
        x = x3;
        x3 = x2;
        x2 = x;
        y = y3;
        y3 = y2;
        y2 = y;
        
    end
    
    xm = 0.5*(x1 - x2);
    xr = 2*xm - x3;
    ym = 0.5*(y1 - y2);
    yr = 2*ym - y3;
    
    if f(xr,yr) < f(x3,y3)
        
        x3 = xr;
        y3 = y2;
        
    elseif f(xr,yr) > f(x3,y3)
        
        xc = 0.5*(xm + x3);
        yc = 0.5*(ym + y3);
        
        if f(xc,yc) < f(x3,y3)
            
            x3 = xc;
            y3 = xc;
            
        else
            
            x2 = 0.5*(x1 + x2);
            x3 = 0.5*(x1 + x3);
            y2 = 0.5*(y1 + y2);
            y3 = 0.5*(y1 + y3);
            
        end
    end
    
    err = abs(f(x1,y1) - f(x3,y3));
    min = f(x3,y3);
    
end
end
        
function val = f(x,y)

val = -(sin(x) + cos(y));

end