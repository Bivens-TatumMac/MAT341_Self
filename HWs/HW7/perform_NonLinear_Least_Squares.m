% Perform nonlinear least squares to find a best fit function through data
% {(xi,yi)}i=1->N.
%
% fxb = B(1)*exp((-(xData(l)-B(1))^2)/(2*B(2)^2))

function perform_NonLinear_Least_Squares()

N = 2500;

data = give_NonLinear_Least_Squares_Data(N) ;
xData = data(:,1);
yData = data(:,2);

err = 1;
tol = 1e-5;

B0 = [1  0.5  0.3]';
fxb = zeros(1,N);
M = 3;
minl2 = 0;


while err > tol
    for i = 1:M
        for j = 1:N
        
            A(j,i) = xData(j)^(i-1); 
                      
        end     
    end
    
    B = inv( A' * A )* A' * yData;
    M = length(B);   
    
    for l = 1:N    
        
            fxb(l) = fxb(l) + B(1)*exp((-(xData(l)-B(1))^2)/(2*B(2)^2));
        
    end
    
    r = yData - fxb;    
    minl2 = r.^2;
    err = minl2;
    
end

plot(xData,yData,'b','LineWidth',6);
hold on;
plot(xData,fxb,'r','LineWidth',4);
legend('Data','Model Fit');
   
end