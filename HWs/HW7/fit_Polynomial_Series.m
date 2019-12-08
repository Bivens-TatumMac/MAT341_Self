% linear least squares to find the best fit polynomial of degree 12 through 
% data {(xi,yi)}i=1->N.
% Find {?j}j=0->12 that minimizes the l2-norm of the residual ||~r||2->2 
% for the model function: f(x;?->) =?j=0->12(Bjxj).

function  l2norm = fit_Polynomial_Series()

N = 50;
xData = linspace(-2*pi, 2*pi, N);
yData = cos(xData)'; % apostrophe will make it a column vector, 50x1 matrix
fxb = zeros(1,N);

for i = 1:13
    for j = 1:N
        
        A(j,i) = xData(j)^(i-1); 
        
    end
end
    
B = inv( A' * A )* A' * yData;
r = yData - (A * B);
l2norm = sqrt(r'.*r);
    

for l = 1:N    
    for k = 1:13
        
        fxb(l) = fxb(l) + B(k)*xData(l)^(k-1);
        
    end
end

plot(xData,yData,'b','LineWidth',6);
hold on;
plot(xData,fxb,'r','LineWidth',4);
legend('Data','Best Poly Fit');

end

%% (a)  How does increasing N, the # of data points, change the residual? 
%%      What is the residual when N = 10 vs. N = 50 vs. N = 250?
%       At N = 50 the residual is about 0.
%       At N = 10, the redidual is usually imaginary, but higher than zero
%       (sometimes near 2) when real.
%       At N = 250, whether real or imaginary the residual is around zero/
%      
%
%% (b)  Where have you seen cos(x) written as a polynomial before?  
%%      What was it called? What were the coefficients?
%       As a Power Series/Taylor Series. sumn=1->inf((-1)^n*x^2n/(2n!)).
%
%% (c)  What are the coefficients you found when N = 250?
%       For N = 250,
%       B = [0.9999 0.0000 -0.4998 -0.0000 0.0416 0.0000 -0.0014 -0.0000
%            0.0000 0.0000 -0.0000 -0.0000 0.0000]
%
%% (d)  Do the coefficients you found appear to be related to the others?
%       There seems to be a pattern of two positive then two negative, with
%       zeros every other term, and the nonzero terms oscillating around
%       zero until reaching it.