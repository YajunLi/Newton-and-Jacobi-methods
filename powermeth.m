% here l means lambda, namely, Rayleigh quotient
function [k,l,x]=powermeth(x0,A,TOL,N)
  T=1;
  i=0;
  x0=x0./norm(x0);
  
while i<=N;
    
  if T> TOL;
    y=A*x0;
    x=y./norm(y);
    l=x0'*y;
    
% update index below    
   i=i+1;
   T=max(abs(x-x0));
   x0=x;
   
  else;
   k=i;
   
  return; % jump out of while loop, to the end
  endif;
  endwhile;
  x
  disp("exceed maximum number of iterations");
endfunction;
