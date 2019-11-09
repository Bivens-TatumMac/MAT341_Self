function vary_Error_Tolerances_To_Compare()

errTolVec = [1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11 1e-12];

for i = 1:length(errTolVec)
    
    golS(i) = golden_Search(errTolVec(i));
    sucParInt(i) = successive_Parabolic_Interpolation(errTolVec(i));
    NewtOpt(i) = Newtons_1D_Opt(errTolVec(i));
    
    i = i + 1;
    
end

figure(1);
semilogx(golS, errTolVec, 'b', sucParInt, errTolVec, 'r', NewtOpt, errTolVec, 'k');
set(gca, 'LineWidth', 5, 'XTickLabel', 'Number of Iterations', 'YTickLabel', 'Error Tolerances');
legend('Golden Search', 'Succ. Para. Interp.', 'Newt. 1D Opt');

figure(2);
loglog(golS, errTolVec,'b', sucParInt,  errTolVec, 'r', NewtOpt, errTolVec, 'k')
set(gca, 'LineWidth', 5, 'XTickLabel', 'Number of Iterations', 'YTickLabel', 'Error Tolerances');
legend('Golden Search','Succ. Para. Interp.', 'Newt. 1D Opt');

end

% a) Newton's seems to converge faster.
% b) As error tolerances increase, all the functions converge faster.
% c) Starting with three points seems better than starting with the outer
% points, and starting with ordered points works best.