% Compare the iteration counts for both versions of the Gradient Descent script. 

function vary_Error_Tolerances_To_Compare()

errTolVec = [1e-1  1e-2  1e-3  1e-4  1e-5  1e-6  1e-7  1e-8  1e-9  1e-10  1e-11];

for i = 1:length(errTolVec)
    
    gd1(i) = Gradient_Descent_1(errTolVec(i),0.5);
    gd2(i) = Gradient_Descent_2(errTolVec(i));
    
    i = i + 1;
    
end

figure(1);
semilogx(gd1, errTolVec, 'b', gd2, errTolVec, 'r', 'LineWidth',5);
xlabel('Number of Iterations');
ylabel('Error Tolerance');
legend('Fixed Step', 'Barzilai-Borwein');

figure(2);
loglog(gd1, errTolVec, 'b', gd2, errTolVec, 'r', 'LineWidth',5);
xlabel('Number of Iterations');
ylabel('Error Tolerance');
legend('Fixed Step', 'Barzilai-Borwein');

end

% a) The fixed step at its "best" size seems to converge faster than the B-B.
% b) When gamma = 0.5 for the fixed step, the B-B step converges faster.
% c) The B-B step size converges quickly without having to spend time
% finding a "best" step size.
% d) I would use the B-B step size for the reason stated in c) above.