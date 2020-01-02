%% Simplified version of manifold optimization
%% Only for the problems with constant modulus constraints
%% Author: LT 2020.01.01

function result = manifold_opt(problem)

delta_trigger = 1e-3;  % stopping criterion.
% the initial value of iterations.
x = problem.init;
iter = 0;
cost = problem.cost(x);
while true
    egrad = problem.egrad(x); %Euclidean gradient at point x
    mgrad = egrad - real(egrad .* conj(x)).* x; % Manifold gradient
    [newx, newcost] = Armijo_linesearch(x, mgrad, cost, problem);
    if cost - newcost < delta_trigger || iter > 80
        break
    end
    iter = iter + 1;
    hist(iter) = cost;
    x = newx;
    cost = newcost;   
end

result.x = newx;
result.cost = newcost;
result.iter = iter;
result.hist = hist;


