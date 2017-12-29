function root = bisect(f, a, b, TOL)


% Anything after a "%" sign is a comment, i.e. Octave ignores it when you call the file.

% bisect.m solves an equation of the form f(x) = 0 using the bisection method. As with all function m-files, the file name is the same as the name of the function on the first line.

% INPUTS
%
% f   : an in-line function. We want to solve the equation f(x) = 0.
% a,b : numbers such that a < b. We should have f(a)*f(b) <0, otherwise bisect.m returns nonsense.
% TOL : the tolerance, a small number that specifies how close we want to get to a solution.

% OUTPUT
%
% root = a point p such that f(p) is (approximately) zero.


MaxIterations = 10000;    % How many times we try the loop before giving up. Hopefully, we don't reach this number of iterations.

i = 1;    % initialize the loop variable. The semicolons prevent the output of each line from being displayed.



while i <= MaxIterations

   % This is the start of the loop. Everything that's indented will run until "i <= MaxIterations" is false, or the command "return" is read.

	p = (a+b)/2;        % Calculates the midpoint of the interval [a,b]
	fa = f(a);	    % Evaluates f at x=a.
	fp = f(p);          % Evaluates f at x=p.
	if abs(fp) < TOL    % Stopping criterion
  		root = p;      % This assigns p to be the output of the function, if the criterion is satisfied.
    i
		return;	    % "return" tells the .m file to stop.
	endif
	
	if sign(fa) == sign(fp)   % Testing for which half of [a,b] the zero lives in 

		a = p;	          % If f(a) and f(p) have the same sign, our new interval is [p,b]
	else

		b = p;		  % Otherwise, our new interval is [a,p]

	endif
	
	i = i+1;          % Increase the loop variable by 1.           


endwhile

disp(['Process ended after ' num2str(MaxIterations), ' iterations.'])    % This is the syntax for displaying text. The command 'num2str' takes a numerical variable and converts it into the appropriate string of numbers.

end   % 'end' tells Octave that the function m-file is finished.
