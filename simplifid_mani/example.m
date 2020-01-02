%% An example of using the manifold optimzation
%% Author: LT 2020.01.01
%% Two necessities: Cost function and Euclidean gradient function

% This is just an example to solve a vector factorization problem,  
% i.e., min |f - Ax|^2, where f and A is given known constant. 
% x is the variable requiring optimization with constant modulus
% constrains.
% If you want to use the tool to solve your
% self-defined problems, just replace the cost_func and egrad_func by
% your own functions. 

clc; clear; 

A = randi(8,4) + randi(8,4) * 1j; 
f = randi(8,1) + randi(8,1) * 1j; 
problem.cost  = @(x) (f-A*x)'*(f-A*x);
problem.egrad = @(x) -2*A'*(f-A*x);
% initialization point with constant modulus constraints
problem.init = exp( 1i*unifrnd(0,2*pi,4,1)); 

result = manifold_opt(problem);
plot(1:result.iter, result.hist, 'LineWidth', 2)
ylabel('loss')
xlabel('number of iterations')
disp(['solved x with ', num2str(result.iter),  ' iterations : ']) 
disp(result.x)
disp(['loss is ', num2str(result.cost)])