% Within this script, you will run your go_Go_Gaussian_Elimination.m script 
% for a variety of N values.

function plot_Gaussian_Elimination_Scaling()

NVec = 2:1:100;

for i = 1:length(NVec)
    
    Count(i) = go_Go_Gaussian_Elimination(i);
    
end

figure(1)
loglog(NVec, Count, 'b', 'LineWidth', 5);
xlabel('Size of Square Matrix');
ylabel('Operation Count');

figure(2)
plot(NVec, Count, 'b', 'LineWidth', 5);
xlabel('Size of Square Matrix');
ylabel('Operation Count');

end

%% As the size of your matrix increases, how does the number of operations 
%% required to compute its corresponding reduced row echelon form scale 
%% with N? Does it appear linear? Quadratic? Cubic? Why?
% The N vs number of operations seems to become linear for loglog, and
% begin to increase exponentially for plot. It appears quadratic, because
% the graphs look like half of a parabola.