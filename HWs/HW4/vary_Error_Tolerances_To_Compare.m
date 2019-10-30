% Write another script that takes no in-puts (nor returns anything) 
% that calls the previous two algorithms you?ve made and calls them to 
% run for a variety of error tolerances. Run both of those algorithms for 
% each error tolerance in the following vector: errTolVec=[1e?1 1e?2 1e?3
% 1e?4 1e?5 1e?6 1e?7 1e?8 1e?9 1e?10 1e?11 1e?12].
% Make two plots that illustrate each algorithms number of iterations, 
% N vs. specific error tolerances, tol. For one plot, use logarithmic axis 
% in the horizontal direction only (e.g., semilogx) while in the other 
% use logarithmic axis for both (e.g.,loglog). On each figure, plot both 
% sets of data. That is, you want to see a comparison of each algorithm?s 
% number of iterations vs. error tolerances.

function vary_Error_Tolerances_To_Compare()

errTolVec = [1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11 1e-12];

for i = 1:length(errTolVec)
    
    golS(i) = golden_Search(errTolVec(i));
    sucParInt(i) = successive_Parabolic_Interpolation(errTolVec(i));
    i = i + 1;
    
end

figure(1);
semilogx(golS, errTolVec, 'b', sucParInt, errTolVec, 'r');
set(gca, 'LineWidth', 5, 'XTickLabel', 'Number of Iterations', 'YTickLabel', 'Error Tolerances');
legend('Golden Search', 'Succ. Para. Interp.');

figure(2);
loglog(golS, errTolVec, sucParInt, errTolVec)
set(gca, 'LineWidth', 5, 'XTickLabel', 'Number of Iterations', 'YTickLabel', 'Error Tolerances');
legend('Golden Search','Succ. Para. Interp.')

end

% a) succ. para. interp. seems to converge faster overall.
% b) succ. para. interp converges faster overall, golden search takes way
% more iteration the lower the tolerance.