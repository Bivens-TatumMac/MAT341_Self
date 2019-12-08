% perform linear least squares to find a best fit function through data
% {(xi,yi)}i=1->N
% Find {?j}j=1->M that minimizes the l2-norm of the residual ||~r||2->2 for 
% the model function: f(x;?->) = sumj=1->M(Bjsin(jx).

function l2norm = fit_Sine_Series()

N = 500;
xData = linspace(-pi, pi, N);
yData = (((0.25*xData.^2).*cos(xData).^4).*sin(xData).^7)';
fxb = zeros(1,N);

M = 40;

for i = 1:M
    for j = 1:N
        
        A(j,i) = xData(j)^(i-1);
        
    end
end
    
B = inv( A' * A )* A' * yData;
r = yData - (A * B);
l2norm = sqrt(r'.*r);
  
for l = 1:N
    for k = 1:M
        
        fxb(l) = fxb(l) + B(k)*sin(xData(l)*k);
        
    end
end

plot(xData,yData,'b','LineWidth',6);
hold on;
plot(xData,fxb,'r','LineWidth',4);
legend('Data','Best Sine Series Fit');

end

%% (a) Use N = 500. How does increasing M, the # of terms in the sine 
%%     series, change the residual? What is the residual when M = 5 vs. 
%%     M = 10 vs. M = 20 vs. M = 40?
%      When M = 5, the residual is low decimals close to zero.
%      When M = 10, the residual is closer to zero.
%      When M = 20, the residual is even closer to zero.
%      When M = 40, the residual is essentially zero.
%
%% (b) You have just found a representation of a function using only sine 
%%     functions; do a quick google search for ?sine series? and state what 
%%     the name of this series/process is called. Hint: it starts with a ?F?.
%      The Fourier sine series.