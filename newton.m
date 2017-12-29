function root = newton(f, f_prime, p0, TOL)

% newton.m solves an equation of the form f(x) = 0 using Newton's Method.

% INPUTS
%
% f       : an in-line function. We want to solve the equation f(x) = 0.
% f_prime : the derivative of f, also an in-line function.
% p0      : an initial guess, ideally a number close to a root of f. 
% TOL     : the tolerance, a small number that specifies how close we want to get to a solution.

% OUTPUT
%
% root = a point p such that f(p) is (approximately) zero.


MaxIterations = 10000; 

i = 1;    % initialize the loop variable. The semicolons prevent the output of each line from being displayed.



while i <= MaxIterations

 

	f0 = f(p0);          % Evaluates f at x=p0.
	p1 = p0 - f(p0)/f_prime(p0);  % Computes the new guess p1.
	if abs(f(p1)) < TOL    % Stopping criterion
  		root = p1;
   % This assigns p to be the output of the function, if the criterion is satisfied.
		i
		return;
	    % "return" tells the .m file to stop.
	end
	
	p0 = p1;          % p1 is the new starting value.
	i = i+1;          % Increase the loop variable by 1.           


end
disp(['Process ended after ' num2str(MaxIterations), ' iterations.'])

end