%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: script2: practice debugging
%
% NOTE: 1) in this script, we want to define an array (vector)
%          of x-Values (independent variable)
%
%       2) next we want to evaluate a function y=f(x) at every x-Value
%          and then plot. 
%   
%       3) script will throw errors; fix them.
%
%       Graphs the function 5.*sin(x^2).*cos(x) from x = 1.25 to 2.5
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function script2()


x = 1.25:0.025:2.5;

for i=1:length(x)
   
    y(i) = f(x(i));
    
end

% plotting attributes
ms = 10;
lw = 5;

% plot
plot(x,y,'k.-','MarkerSize',ms,'LineWidth',lw);
xlabel('x');
ylabel('y');

end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION: computes function y=f(x) for given input x
%
% RETURNS: function value when evaluated at input, x.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function val = f(x)

val = 5.*sin(x^2).*cos(x);

end