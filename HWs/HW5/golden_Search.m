function N = golden_Search(tol)

N = 0;
b = 2;
a = 1;
T = (sqrt(5)-1)/2;
x1 = a + (1-T)*(b-a);
x2 = a + T*(b-a);
f1 = f(x1);
f2 = f(x2);


while (b-a) > tol
    
    if f1 > f2
       
        a = x1;
        x1 = x2;
        f1 = f2;
        x2 = a +T*(b-a);
        f2 = f(x2)
        
    else
        
        b = x2;
        x2 = x1;
        f2 = f1;
        x1 = a + (1-T)*(b-a);
        f1 = f(x1);
        
    end

    N = N + 1;
end
end

function val = f(x)

val = 0.5 - x*exp(-x^2);

end