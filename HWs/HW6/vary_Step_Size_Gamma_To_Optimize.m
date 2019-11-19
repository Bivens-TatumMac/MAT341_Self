% Write a script that will run your Gradient_Descent_1 code from Problem 1 
% for a variety of step-sizes, gamma, to find which gamma seems to minimize
% the total number of iterations needed to achieve 1e?10 accuracy.

function NVec = vary_Step_Size_Gamma_To_Optimize()

tol = 1e-10;
gamma = [0.1 0.25 0.5 0.75 1.0 1.25 1.5];

for i = 1:length(gamma)
    
    NVec(i) = Gradient_Descent_1(tol,gamma(i));
    
end

semilogx(gamma,NVec,'b','LineWidth',5);
xlabel('Gamma');
ylabel('Number of Iterations');
legend('Fixed Step');

end

% The best step size to minimize iterations for the function 
% f(x,y) = -(sinx + cosy) seems to be gamma = 1.0.